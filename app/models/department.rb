class Department < ApplicationRecord
    has_many :employees
    has_many :assets_directories
  end
  