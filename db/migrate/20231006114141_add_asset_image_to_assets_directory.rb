class AddAssetImageToAssetsDirectory < ActiveRecord::Migration[7.0]
  def change
    add_column :assets_directories, :asset_image, :string
  end
end
