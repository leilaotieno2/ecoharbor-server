class DepartmentsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_department_not_found

  def new
  end

  def create
    department = Department.create!(department_params)
    render json: department, status: :created
  end

  def index
    render json: Department.all, status: :ok
  end

  def show
    department = find_department
    render json: department, status: :ok
  end

  def edit
  end

  def update
    department = find_department
    department.update!(department_params)
    render json: department, status: :ok
  end

  def delete
  end

  def destroy
    department = find_department
    department.destroy!
    head :no_content
  end

  private 

  def department_params
    params.permit(:department_id, :department_name, :head_of_department, :total_assets, :asset_total_value, :department_code)
  end

  def find_department
    department = Department.find(params[:id])
  end

  def render_unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_department_not_found
    render json: { error: 'Department record not found, try again' }, status: :not_found
  end
end
