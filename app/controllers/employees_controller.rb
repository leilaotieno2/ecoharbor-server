class EmployeesController < ApplicationController
    before_action :authenticate_user!
  
    def index
      @employees = Employee.all
    end
  
    def show
      @employee = Employee.find(params[:id])
    end
  
    def new
      @employee = Employee.new
    end
  
    def create
      @employee = Employee.new(employee_params)
  
      if @employee.save
        # Handle successful employee creation, e.g., redirect to index page
        redirect_to employees_path, notice: 'Employee was successfully created.'
      else
        # Handle validation errors, e.g., show the form again with error messages
        render :new
      end
    end
  
    # Define other CRUD actions: edit, update, destroy
  
    private
  
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :email, :phone_number, :username, :password, :employment_date, :department_id, :employee_role)
    end
  end
  