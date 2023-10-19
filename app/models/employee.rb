class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :api, :jwt_authenticatable, jwt_revocation_strategy: self
  # ROLES = %w[admin manager employee].freeze
  belongs_to :department, class_name: 'Department', foreign_key: 'department_id'
  enum employee_role: { employee: 0, manager: 1, admin: 2 }
  after_initialize :set_default_role, if: :new_record?
  def set_default_role
    self.employee_role ||= :employee
  end

end
