class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.integer :department_id
      t.string :department_name
      t.string :department_code
      t.string :head_of_department
      t.integer :total_assets
      t.decimal :asset_total_value

      t.timestamps
    end
  end
end
