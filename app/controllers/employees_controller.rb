# app/controllers/employees_controller.rb

class EmployeesController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_employee_not_found


  def index
    render json: Employee.all, status: :ok
  end

  # POST /employees
  def create
    employee = Employee.create!(employee_params)
    render json: employees, status: :created
 end

  # GET /employees/:id
  def show
    employee = find_employee
    render json: employee, status: :ok
  end

  def update
    employee = find_employee
    employee.update!(employee_params)
    render json: employee, status: :ok
  end

  def destroy
    employee = find_employee
    employee.destroy
    head :no_content
  end

  private

  def find_employee
    employee = Employee.find(params[:id])
  end

  def employee_params
    params.permit(:first_name, :last_name, :email, :phone_number,
      :username, :password, :employment_date, :department_id, :employee_role
    )
  end

   def render_unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_employee_not_found
    render json: { error: 'Employee record not found, try again' }, status: :not_found
  end
end
