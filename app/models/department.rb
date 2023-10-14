class Department < ApplicationRecord
  has_many :employees, dependent: :nullify #when you delete a department, the associated employees' department_id will be set to NULL
  has_many :assets_directories, dependent: :nullify #when you delete a department, the associated assetw' department_id will be set to NULL 
  
  
  # validates :department_name, presence: true, inclusion: { in: ['IT', 'Finance', 'Operations', 'Facilities Management', 'HR', 'Procurement', 'Repairs and Maintenance', 'Marketing', 'Sales', 'Customer Service'] }
  # validates :department_code, presence: true, uniqueness: true



  def self.valid_department_ids
    pluck(:department_id)
  end
end