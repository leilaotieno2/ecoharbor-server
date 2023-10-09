class Request < ApplicationRecord
  belongs_to :assets_directory, class_name: 'AssetsDirectory'
  belongs_to :employee, class_name: 'Employee'
  has_one :approval

  validates :asset_id, presence: true
  validates :urgency, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :reason, presence: true
  validates :employee_id, presence: true
  validates :request_date, presence: true
  validates :request_status, presence: true, inclusion: { in: ['Pending', 'Approved', 'Rejected'] }
end