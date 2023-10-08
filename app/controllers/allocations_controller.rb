class AllocationsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_allocation_not_found

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

  def allocation_params
    params.permit(:allocation_id, :asset_id, :employee_id, :quantity_allocated, :allocation_date, :return_date)
  end

  def find_rallocation
    allocation = Allocation.find(params[:id])
  end

  def render_unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_allocation_not_found
    render json: { error: 'Allocation record not found, try again' }, status: :not_found
  end

  
end
