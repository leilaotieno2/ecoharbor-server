class Request < ApplicationRecord
    belongs_to :assets_directory
    belongs_to :employee
    has_one :approval
  end
  