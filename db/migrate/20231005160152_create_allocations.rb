class CreateAllocations < ActiveRecord::Migration[7.0]
  def change
    create_table :allocations do |t|
      t.integer :asset_id
      t.integer :employee_id
      t.integer :quantity_allocated
      t.date :allocation_date
      t.date :return_date

      t.timestamps
    end
  end
end
