class Request < ApplicationRecord
    belongs_to :assets_directory, class_name: 'AssetsDirectory'
    belongs_to :employee, class_name: 'Employee'
    has_one :approval
  end
  