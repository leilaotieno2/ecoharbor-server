class Request < ApplicationRecord
  belongs_to :assets_directory
  belongs_to :employee
  # has_one :approval

  # validates :asset_id, presence: true
  # validates :urgency, presence: true
  # validates :quantity, presence: true, numericality: { greater_than: 0 }
  # validates :reason, presence: true
  # validates :employee_id, presence: true
  # validates :request_date, presence: true
  # validates :request_status, presence: true, inclusion: { in: ['Pending', 'Approved', 'Rejected'] }
end