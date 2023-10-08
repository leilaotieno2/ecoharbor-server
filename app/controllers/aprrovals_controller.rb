class AprrovalsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_approval_not_found

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

  def approvals_params
    params.permit(:approval_id, :request_id, :approval_status, :approval_date, :comments)
  end

  def find_approval
    approval = Aprrovals.find(params[:id])
  end

  def render_unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_approval_not_found
    render json: { error: 'Approval record not found, try again' }, status: :not_found
  end
end
