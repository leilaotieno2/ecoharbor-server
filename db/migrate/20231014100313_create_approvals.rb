class CreateApprovals < ActiveRecord::Migration[7.0]
  def change
    create_table :approvals do |t|
      t.integer :approval_id
      t.integer :request_id
      t.text :approval_status
      t.date :approval_date
      t.text :comments

      t.timestamps
    end
    add_index :approvals, :request_id
  end
end
