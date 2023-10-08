class RepairsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_repair_not_found

  def index
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

  def repairs_params
    params.permit(:repair_id, :asset_id, :quantity, :checkin_date, :checkout_date, :department_name)
  end

  def find_repair
    repair = Reqpair.find(params[:id])
  end

  def render_unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_repair_not_found
    render json: { error: 'Repair record not found, try again' }, status: :not_found
  end
end
