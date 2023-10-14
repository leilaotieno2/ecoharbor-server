class Employee < ApplicationRecord
  belongs_to :department
  has_many :requests, dependent: :destroy #when you delete an employee, their associated Requests and Allocations records will also be deleted automatically, ensuring that the data remains consistent.
  has_many :repairs, dependent: :nullify #dissociate the repair records from the employee when a repair is deleted, but it won't delete the employee.
  has_many :allocations, dependent: :destroy #when you delete an employee, their associated Requests and Allocations records will also be deleted automatically, ensuring that the data remains consistent.

  attr_accessor :password

  validates :employee_role, inclusion: { in: ["Procurement Manager", "Normal Employee", "Finance"] }
  
  # validates :department_id, inclusion: { in: ->(_) { Department.valid_department_ids }, message: "is not a valid department ID" }
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  # validates :username, presence: true, uniqueness: true
  # validates :password, presence: true
  # validates :employment_date, presence: true
end