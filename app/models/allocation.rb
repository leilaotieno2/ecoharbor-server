class Allocation < ApplicationRecord
    belongs_to :assets_directory
    belongs_to :employee
  end
  