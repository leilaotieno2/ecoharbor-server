class RequestsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_request_not_found

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

  def request_params
    params.permit(:repair_id, :asset_id, :urgency, :quantity, :reason, :employee_id, :request_date, :approval_date, :request_status)
  end
  
  def find_request
    request = Request.find(params[:id])
  end

  def render_unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_request_not_found
    render json: { error: 'Request record not found, try again' }, status: :not_found
  end
end
