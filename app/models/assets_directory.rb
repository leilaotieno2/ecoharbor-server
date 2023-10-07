class AssetsDirectory < ApplicationRecord
    belongs_to :department, optional: true
    has_many :repairs
    has_many :allocations
    has_many :requests, class_name: 'Request' # Specify the class name here
  end
  