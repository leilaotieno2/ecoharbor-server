class Employee < ApplicationRecord
  belongs_to :department

  attr_accessor :password
  
  validates :department_id, inclusion: { in: ->(_) { Department.valid_department_ids }, message: "is not a valid department ID" }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :employment_date, presence: true
end