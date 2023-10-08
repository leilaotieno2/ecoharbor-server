class EmployeeSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :first_name, :last_name, :email, :phone_number, :username, :employment_date, :department_id, :employee_role

end
