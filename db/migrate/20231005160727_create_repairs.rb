class CreateRepairs < ActiveRecord::Migration[7.0]
  def change
    create_table :repairs do |t|
      t.integer :repair_id
      t.integer :asset_id
      t.integer :quantity
      t.date :checkin_date
      t.date :checkout_date
      t.text :department_name

      t.timestamps
    end
  end
end
