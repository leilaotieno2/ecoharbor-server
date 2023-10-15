class Request < ApplicationRecord
  belongs_to :employee, class_name: 'Employee', foreign_key: 'employee_id'
  has_one :approval

  validates :asset_id, presence: true
  validates :urgency, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :reason, presence: true
  validates :employee_id, presence: true
  validates :request_date, presence: true
  validates :request_status, presence: true, inclusion: { in: ['Pending', 'Approved', 'Rejected'] }

  before_create :set_unique_request_id

  validate :validate_asset_id_uniqueness

  private

  def set_unique_request_id
    latest_request = Request.order(request_id: :desc).first
    if latest_request
      self.request_id = latest_request.request_id + 1
    else
      self.request_id = 1
    end
  end

  def validate_asset_id_uniqueness
    existing_request = Request.where(asset_id: asset_id, request_status: 'Pending').where.not(id: id).first
    if existing_request
      errors.add(:asset_id, 'is already requested by another person')
    end
  end
end
