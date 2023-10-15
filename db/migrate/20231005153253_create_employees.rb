class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.string :username
      t.string :password_digest
      t.date :employment_date
      t.integer :department_id
      t.text :employee_role

      t.timestamps
    end
  end
end
