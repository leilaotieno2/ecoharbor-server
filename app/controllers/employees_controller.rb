# app/controllers/employees_controller.rb

class EmployeesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  before_action :set_employee, only: [:show]

  def index
    @employees = Employee.all
    render json: @employees
  end

  # POST /employees
  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      render json: @employee, status: :created
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # GET /employees/:id
  def show
    render json: @employee
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(
      :first_name, :last_name, :email, :phone_number,
      :username, :password, :employment_date, :department_id, :employee_role
    )
  end
end
