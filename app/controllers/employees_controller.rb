class EmployeesController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_employee_not_found

  def new
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private 

  def employee_params
    params.permit(:first_name, :last_name, :email, :phone_number, :username, :password, :employment_date, :department_id, :employee_role)
  end

  def find_employee
    employee = Employee.find(params[:id])
  end

  def render_unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_employee_not_found
    render json: { error: 'Employee record not found, try again' }, status: :not_found
  end

end
