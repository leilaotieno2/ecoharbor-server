class AssetsDirectoriesController < ApplicationController
    before_action :set_asset, only: [:show]
    before_action :authorize_procurement_admin, only: [:create, :update, :destroy]
end

# List all assets
def index
    @assets = AssetsDirectory.all 
    render json: @assets 
end

# display details of an asset
def show 
    render json:@asset 
end
# Create an Asset. Permit Procurement Admin only 
def create 
    if current_user.procurement_admin? 
        @asset = AssetsDirectory.new(asset_params)

        if @asset.save
            render json: @asset, status: :created
        else 
            render_errors(@asset)
        end
    else
        render_unauthorized   
    end
end

# Update asset. Only procurement manager can update asset details
def update
    @asset = AssetsDirectory.find(params[:id])

    if current_user.procurement_admin?
        if @asset.update(asset_params)
            render json: @asset, status: :ok
        else
            render_errors(@asset)
        end
    else
        render_unauthorized       
    end
end


# Delete an asset. Only procurement admin can delete an asset

def destroy
    @asset = AssetsDirectory.find(params[:id])

    if current_user.procurement_admin?
        @asset.destroy 
        head :no_content 
    else 
        render_unauthorized      
    end
end

private

def asset_params
    params.require(:asset_directory).permit(:asset_name, :category_name, :category_code, :condition, :status, :purchase_value, :quantity_in_stock, :department_id, :asset_image)
end

# custom method to render unauthorized response
def render_unauthorized
    render json: { error: "Unauthorized. Only procurement admins can perform this action."}, status: :unauthorized  
end

# cutom method to render error response
def render_errors(model)
    render json: { errors: model.errors.full_messages }, status: :unprocessable_entity
end