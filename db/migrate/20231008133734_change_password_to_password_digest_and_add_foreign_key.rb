class ChangePasswordToPasswordDigestAndAddForeignKey < ActiveRecord::Migration[7.0]
  def change
    rename_column :employees, :password, :password_digest
    add_foreign_key :employees, :departments
  end
end
