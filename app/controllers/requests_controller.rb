class RequestsController < ApplicationController
    before_action :set_request, only: [:show, :edit, :update, :destroy]
  
    def index
      @requests = Request.all
      render json: @requests
    end
  
    def show
      render json: @request
    end
  
    def create
      @request = Request.new(request_params)
      if @request.save
        render json: @request, status: :created
      else
        render json: @request.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @request.update(request_params)
        render json: @request
      else
        render json: @request.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @request.destroy
      head :no_content
    end
  
    def seed_data
      # Load data from Rails seeds
      @seeded_requests = Request.where(created_at: 1.day.ago..Time.now)
      render json: @seeded_requests
    end
  
    private
  
    def set_request
      @request = Request.find(params[:id])
    end
  
    def request_params
      params.require(:request).permit(:request_id, :asset_id, :urgency, :quantity, :reason, :employee_id, :request_date, :approval_date, :request_status)
    end
  end
  