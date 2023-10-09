class Approval < ApplicationRecord
  self.table_name = 'aprrovals'
  belongs_to :request
  belongs_to :employee, foreign_key: 'approving_employee_id', class_name: 'Employee'

  validates :request_id, presence: true
  validates :approval_status, presence: true, inclusion: { in: ['Approved', 'Rejected', 'Pending'] }
  validates :approval_date, presence: true
end