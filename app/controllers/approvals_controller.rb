class ApprovalsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_approval_not_found

  def new
  end

  def create
    approval = Approval.create!(approval_params)
    render json: approval, status: :created
  end

  def index
    render json: Approval.all, status: :ok
  end

  def show
    approval = find_approval
    render json: approval, status: :ok
  end

  def edit
  end

  def update
    approval = find_approval
    approval.update!(approval_params)
    render json: approval, status: :ok
  end

  def delete
  end

  def destroy
    approval = find_approval
    approval.destroy!
    head :no_content
  end

  private 

  def approval_params
    params.permit(:approval_id, :request_id, :approval_status, :approval_date, :comments)
  end

  def find_approval
    approval = Approvals.find(params[:id])
  end

  def render_unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_approval_not_found
    render json: { error: 'Approval record not found, try again' }, status: :not_found
  end
end
