class AssetsDirectorysController < ApplicationController

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_asset_not_found

  def create
    asset = AssetsDirectory.create(asset_params)
    render json: asset, status: :created
  end

  def index
    render json: AssetsDirectory.all, status: :ok
  end

  def show
    asset = find_asset
    render json: asset, status: :ok
  end

  def update
    asset = find_asset
    asset.update!(asset_params)
    render json: asset, status: :ok
  end

  def destroy
    asset = find_asset
    asset.destroy!
    head :no_content
  end

  private 

  def asset_params
    params.permit(:asset_id, :asset_name, :category_code, :condition, :status, :purchase_value, :current_value, :quantity_in_stock, :department_id, :asset_image)
  end

  def find_asset
    asset = AssetsDirectory.find(params[:id])
  end

  def render_unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_asset_not_found
    render json: { error: 'Asset record not found, try again' }, status: :not_found
  end
end

