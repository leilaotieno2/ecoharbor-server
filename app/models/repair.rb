class Repair < ApplicationRecord
  belongs_to :assets_directory

  validates :asset_id, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :checkin_date, presence: true
end
