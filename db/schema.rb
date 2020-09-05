# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_04_212640) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "aides", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "age"
    t.string "gender"
    t.string "address"
    t.string "certifications"
    t.string "password_digest"
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "age"
    t.string "gender"
    t.string "address"
    t.string "medicaid_number"
    t.string "password_digest"
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.bigint "aide_id", null: false
    t.bigint "service_id", null: false
    t.date "availability_to_start"
    t.integer "pay_rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["aide_id"], name: "index_contracts_on_aide_id"
    t.index ["service_id"], name: "index_contracts_on_service_id"
  end

  create_table "request_jobs", force: :cascade do |t|
    t.string "location"
    t.date "starting_date"
    t.integer "pay_rate"
    t.bigint "aide_id", null: false
    t.bigint "request_service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["aide_id"], name: "index_request_jobs_on_aide_id"
    t.index ["request_service_id"], name: "index_request_jobs_on_request_service_id"
  end

  create_table "request_services", force: :cascade do |t|
    t.bigint "service_id", null: false
    t.bigint "client_id", null: false
    t.date "starting_date"
    t.integer "charge_rate"
    t.string "skills"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_request_services_on_client_id"
    t.index ["service_id"], name: "index_request_services_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "skills"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "contracts", "aides"
  add_foreign_key "contracts", "services"
  add_foreign_key "request_jobs", "aides"
  add_foreign_key "request_jobs", "request_services"
  add_foreign_key "request_services", "clients"
  add_foreign_key "request_services", "services"
end
