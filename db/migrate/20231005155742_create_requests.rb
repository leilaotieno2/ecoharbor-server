class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.integer :asset_id
      t.text :urgency
      t.integer :quantity
      t.text :reason
      t.integer :employee_id
      t.date :request_date
      t.date :approval_date
      t.text :request_status

      t.timestamps
    end
  end
end
