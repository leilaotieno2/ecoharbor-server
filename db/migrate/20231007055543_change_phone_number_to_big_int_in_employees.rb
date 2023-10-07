class ChangePhoneNumberToBigIntInEmployees < ActiveRecord::Migration[7.0]
  def change
    change_column :employees, :phone_number, :bigint
  
  end
end
