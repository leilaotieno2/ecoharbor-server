# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
require 'faker'

# Clear existing data (optional)
# You can remove existing data before seeding if needed. Be cautious with this in a production environment.
# Comment out the following lines if you don't want to remove existing data.
# Allocation.destroy_all
# Approval.destroy_all
# AssetDirectory.destroy_all
# Department.destroy_all
# Employee.destroy_all
# Repair.destroy_all
# Request.destroy_all

# Create departments with Faker
5.times do
  Department.create(
    department_name: Faker::Commerce.department,
    department_code: Faker::Alphanumeric.alphanumeric(number: 6, min_alpha: 3, min_numeric: 3).upcase,
    head_of_department: Faker::Name.name,
    total_assets: rand(1..100),
    asset_total_value: Faker::Number.decimal(l_digits: 5, r_digits: 2)
  )
end

# Create employees with Faker
10.times do
  Employee.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.phone_number,
    username: Faker::Internet.username,
    password: Faker::Internet.password(min_length: 8),
    employment_date: Faker::Date.between(from: 1.year.ago, to: Date.today),
    department_id: Department.pluck(:id).sample,
    employee_role: Faker::Job.title
  )
end

# Create assets with Faker
# Create assets with Faker
10.times do
    AssetsDirectories.create( # Use the correct model name "AssetsDirectory" here
      asset_name: Faker::Commerce.product_name,
      category_name: Faker::Commerce.department,
      category_code: Faker::Alphanumeric.alphanumeric(number: 6, min_alpha: 3, min_numeric: 3).upcase,
      condition: Faker::Lorem.word,
      status: Faker::Lorem.word,
      purchase_value: Faker::Number.decimal(l_digits: 5, r_digits: 2),
      current_value: Faker::Number.decimal(l_digits: 5, r_digits: 2),
      quantity_in_stock: rand(1..100),
      department_id: Department.pluck(:id).sample,
      asset_image: Faker::Lorem.word + '.jpg'
    )
  end

# Create allocations with Faker
20.times do
    Allocation.create(
      allocation_id: Faker::Number.unique.between(from: 1, to: 100),
      asset_id: AssetDirectory.pluck(:id).sample,
      employee_id: Employee.pluck(:id).sample,
      quantity_allocated: rand(1..10),
      allocation_date: Faker::Date.between(from: 1.year.ago, to: Date.today),
      return_date: Faker::Date.between(from: Date.today, to: 1.year.from_now)
    )
  end
  
  # Create approvals with Faker
  20.times do
    Approval.create(
      approval_id: Faker::Number.unique.between(from: 1, to: 100),
      request_id: Request.pluck(:id).sample,
      approval_status: Faker::Lorem.word,
      approval_date: Faker::Date.between(from: 1.year.ago, to: Date.today),
      comments: Faker::Lorem.sentence
    )
  end
  
  # Create repairs with Faker
  20.times do
    Repair.create(
      repair_id: Faker::Number.unique.between(from: 1, to: 100),
      asset_id: AssetDirectory.pluck(:id).sample,
      quantity: rand(1..5),
      checkin_date: Faker::Date.between(from: 1.year.ago, to: Date.today),
      checkout_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
      department_name: Faker::Lorem.word
    )
  end
  
  # Create requests with Faker
  20.times do
    Request.create(
      request_id: Faker::Number.unique.between(from: 1, to: 100),
      asset_id: AssetDirectory.pluck(:id).sample,
      urgency: Faker::Lorem.word,
      quantity: rand(1..10),
      reason: Faker::Lorem.sentence,
      employee_id: Employee.pluck(:id).sample,
      request_date: Faker::Date.between(from: 1.year.ago, to: Date.today),
      approval_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
      request_status: Faker::Lorem.word
    )
  end
  
  # ...
  
# Create allocations, approvals, repairs, and requests as needed
# Use Faker to generate data for these tables similarly

puts "Seed data has been created."
