class AssetsDirectoriesController < ApplicationController
    before_action :set_asset, only: [:show]
    before_action :authenticate_procurement_admin, only: [:create, :update, :destroy]
end

def index
    @assets = AssetDirectory.all 
    render json: @assets 
end

def show 
    render json:@asset 
end
# Create an Asset. Permit Procurement Admin only 
def create 
    if current_user.procurement_admin? 
        @asset = AssetDirectory.new(asset_params)

        if @asset.save
            render json: @asset, status: : created
        else 
            render json: @asset.errors, status: : unprocessable_entity
        end
    else
        render json: { error: "Unauthorized. Only procurement admins can create assets."}, status: :Unauthorized    
    end
end

# Update asset. Only procurement manager can update asset details
def update
    @asset = AssetDirectory.find(params[:id])

    if current_user.procurement_admin?
        if @asset.update(asset_params)
            render json: @asset, status: :ok
        else
            render json: @asset.errors, status: :unprocessable_entity
        end
    else
        render json: { error: "Unauthorized. Only procurement admins can edit this asset"}, status: :unauthorized       

    end
end


# Delete an asset. Only procurement admin can delete an asset

def destroy
    @asset = AssetDirectory.find(params[:id])

    if current_user.procurement_admin?
        @asset.destroy 
        head :no_content 
    else 
        render json: { error: "Unauthorized. Only procurement admins can delete this asset."}, status: :unauthorized        
    end
end

private

def asset_params
    params.require(:asset_directory).permit(:asset_name, :category_name, :category_code, :condition, :status, :purchase_value, :quantity_in_stock, :department_id, :asset_image)
end