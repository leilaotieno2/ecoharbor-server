class AssetsDirectorysController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_asset_not_found

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

  def asset_params
    params.permit(:asset_id, :asset_name, :category_code, :category_code, :condition, :status, :purchase_value, :current_value, :quantity_in_stock, :department_id)
  end

  def find_asset
    asset = Asset.find(params[:id])
  end

  def render_unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_asset_not_found
    render json: { error: 'Asset record not found, try again' }, status: :not_found
  end
end
