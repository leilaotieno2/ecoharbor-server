class AssetsDirectory < ApplicationRecord
    belongs_to :department, optional: true # Allow for null department_id
    has_many :repairs
    has_many :allocations
    has_many :requests
  end
  