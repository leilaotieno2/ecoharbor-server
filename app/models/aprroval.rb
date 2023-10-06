class Aprroval < ApplicationRecord
belongs_to :request
  belongs_to :employee, foreign_key: 'approving_employee_id', class_name: 'Employee'
end
