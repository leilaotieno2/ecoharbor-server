class AllocationsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_allocation_not_found

  def create
    allocation = Allocation.create!(allocation_params)
    render json: allocation, status: :created
  end

  def index
    render json: Allocation.all, status: :ok
  end

  def show
    allocation = find_allocation
    render json: allocation, status: :ok
  end

  def update
    allocation = find_allocation
    allocation.update!(allocation_params)
    render json: allocation, status: :ok
  end

  def destroy
    allocation = find_allocation
    allocation.destroy!
    head :no_content
  end

  private 

  def allocation_params
    params.permit(:allocation_id, :asset_id, :employee_id, :quantity_allocated, :allocation_date, :return_date)
  end

  def find_allocation
    allocation = Allocation.find(params[:id])
  end

  def render_unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_allocation_not_found
    render json: { error: 'Allocation record not found, try again' }, status: :not_found
  end

  
end