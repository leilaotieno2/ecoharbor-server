class CreateAssetsDirectories < ActiveRecord::Migration[7.0]
  def change
    create_table :assets_directories do |t|
      t.integer :asset_id
      t.string :asset_name
      t.string :category_name
      t.string :category_code
      t.string :condition
      t.string :status
      t.decimal :purchase_value
      t.decimal :current_value
      t.integer :quantity_in_stock
      t.integer :department_id

      t.timestamps
    end
  end
end
