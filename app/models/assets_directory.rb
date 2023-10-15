class AssetsDirectory < ApplicationRecord
  belongs_to :department
  has_many :repairs#, dependent: :nullify

  # after_destroy :reduce_department_assets
  # after_create :increase_department_assets

  # attr_accessor :total_value_assets

  # private

  # def reduce_department_assets
  #   return unless department.present?
  #   # Calculate the reduction in total value and total assets
  #   total_value_reduction = purchase_value.to_f
  #   total_assets_reduction = 1

  #   # Update the department's total_value_assets and total_assets
  #   department.total_value_assets -= total_value_reduction
  #   department.total_assets -= total_assets_reduction

  #   # Save the department to persist the changes
  #   department.save
  # end

  # def increase_department_assets
  #   return unless department.present?
  #   # Calculate the addition to total value and total assets
  #   total_value_addition = purchase_value.to_f
  #   total_assets_addition = 1

  #   # Update the department's total_value_assets and total_assets
  #   department.total_value_assets += total_value_addition
  #   department.total_assets += total_assets_addition

  #   # Save the department to persist the changes
  #   department.save
  # end




  # has_many :allocations
  # has_many :requests, class_name: 'Request'

  # validates :asset_name, presence: true
  # validates :category_name, presence: true
  # validates :condition, presence: true
  # validates :status, presence: true
  # # validates :condition, presence: true, inclusion: { in: ['New', 'Good', 'Fair', 'Poor', 'Broken', 'Under maintenance', 'Disposed'] }
  # # validates :status, presence: true, inclusion: { in: ['operational', 'under maintenance', 'unrepairable', 'retired'] }
  # validates :purchase_value, numericality: { greater_than_or_equal_to: 0 }
  # validates :current_value, numericality: { greater_than_or_equal_to: 0 }
  # validates :quantity_in_stock, numericality: { greater_than_or_equal_to: 0 }
end