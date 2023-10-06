# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_05_160727) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allocations", force: :cascade do |t|
    t.integer "allocation_id"
    t.integer "asset_id"
    t.integer "employee_id"
    t.integer "quantity_allocated"
    t.date "allocation_date"
    t.date "return_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aprrovals", force: :cascade do |t|
    t.integer "approval_id"
    t.integer "request_id"
    t.text "approval_status"
    t.date "approval_date"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assets_directories", force: :cascade do |t|
    t.integer "asset_id"
    t.string "asset_name"
    t.string "category_name"
    t.string "category_code"
    t.string "condition"
    t.string "status"
    t.decimal "purchase_value"
    t.decimal "current_value"
    t.integer "quantity_in_stock"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.integer "department_id"
    t.string "department_name"
    t.string "department_code"
    t.string "head_of_department"
    t.integer "total_assets"
    t.decimal "asset_total_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone_number"
    t.string "username"
    t.string "password"
    t.date "employment_date"
    t.integer "department_id"
    t.text "employee_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repairs", force: :cascade do |t|
    t.integer "repair_id"
    t.integer "asset_id"
    t.integer "quantity"
    t.date "checkin_date"
    t.date "checkout_date"
    t.text "department_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer "request_id"
    t.integer "asset_id"
    t.text "urgency"
    t.integer "quantity"
    t.text "reason"
    t.integer "employee_id"
    t.date "request_date"
    t.date "approval_date"
    t.text "request_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
