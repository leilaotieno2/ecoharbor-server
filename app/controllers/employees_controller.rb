class EmployeesController < ApplicationController
  wrap_parameters format:[]
  
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_employee_not_found

  def new
  end

  def create
    employee = Employee.create!(employee_params)
    session[:employee_id]=employee.id
    render json: employee, status: :created
  end

  def index
    render json: Employee.all, status: :ok
  end

  def show
    employee = Employee.find_by(id: session[:employee_id])
    if employee
      # render json: employee, status: :ok
      render json: EmployeeSerializer.new(@employee).serialized_json
    else
      render json: { errors: ['Not authorized'] }, status: :unauthorized
    end
  end

  def edit
  end

  def update
    @employee = Employee.find_by(email: params[:email])
    if @employee && @employee.employee_role == params[:email]
      @employee.update!(employee_params)
      render json:@employee, status: :accepted
    else 
      render json:{errors: ['unauthorized request']}, status: :unauthorized
    end
  end

  def delete
  end

  def destroy
    employee = find_employee
    employee.destroy!
    head :no_content
  end

  private 

  def employee_params
    params.permit(:first_name, :last_name, :email, :phone_number, :username, :password, :password_confirmation, :employment_date, :department_id, :employee_role)
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
