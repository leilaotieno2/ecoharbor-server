class AssetsDirectory < ApplicationRecord
  belongs_to :department, optional: true
  has_many :repairs
  has_many :allocations
  has_many :requests, class_name: 'Request'

  validates :asset_name, presence: true
  validates :category_name, presence: true
  validates :condition, presence: true, inclusion: { in: ['New', 'Good', 'Fair', 'Poor', 'Broken', 'Under maintenance', 'Disposed'] }
  validates :status, presence: true, inclusion: { in: ['operational', 'under maintenance', 'unrepairable', 'retired'] }
  validates :purchase_value, numericality: { greater_than_or_equal_to: 0 }
  validates :current_value, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity_in_stock, numericality: { greater_than_or_equal_to: 0 }
end