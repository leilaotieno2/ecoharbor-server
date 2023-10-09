class Department < ApplicationRecord
  has_many :employees
  has_many :assets_directories
  
  
  validates :department_name, presence: true, inclusion: { in: ['IT', 'Finance', 'Operations', 'Facilities Management', 'HR', 'Procurement', 'Repairs and Maintenance', 'Marketing', 'Sales', 'Customer Service'] }
  validates :department_code, presence: true, uniqueness: true



  def self.valid_department_ids
    pluck(:department_id)
  end
end