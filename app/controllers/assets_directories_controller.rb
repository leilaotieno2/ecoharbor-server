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