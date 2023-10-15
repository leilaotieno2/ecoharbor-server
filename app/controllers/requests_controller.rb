class RequestsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  before_action :set_request, only: [:show, :update, :destroy]

  def index
    @requests = Request.all
    render json: @requests
  end

  def show
    render json: @request
  end

  def create
    @request = Request.new(request_params)

    # Check if the asset with the provided asset_id exists in the assets_directory table
    unless AssetsDirectory.exists?(@request.asset_id)
      render json: { error: 'Invalid asset_id' }, status: :unprocessable_entity
      return
    end

    if @request.save
      render json: @request, status: :created
    else
      render json: { error: 'Failed to create request', errors: @request.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @request.update(request_params)
      render json: @request, status: :ok
    else
      render json: { error: 'Failed to update request', errors: @request.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    if @request.destroy
      render json: { message: 'Request deleted successfully' }, status: :ok
    else
      render json: { error: 'Failed to delete request' }, status: :unprocessable_entity
    end
  end

  private

  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(
      :asset_id, :urgency, :quantity, :reason, :employee_id, :request_date, :request_status
    )
  end
end
