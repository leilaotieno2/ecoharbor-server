class Allocation < ApplicationRecord
  belongs_to :assets_directory
  belongs_to :employee

  # validates :asset_id, presence: true
  # validates :employee_id, presence: true
  # validates :quantity_allocated, presence: true, numericality: { greater_than: 0 }
  # validates :allocation_date, presence: true
end