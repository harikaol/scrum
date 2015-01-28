# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150128062734) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone_no"
    t.string   "designation"
    t.integer  "date_of_birth"
    t.string   "email_id"
    t.string   "qualification"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "date_of_joining"
    t.string   "avatar"
    t.string   "date_of_leaving"
    t.string   "reason"
    t.string   "status"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "project_name"
    t.text     "description"
    t.string   "complexity"
    t.string   "date_received"
    t.string   "volume"
    t.text     "constraints"
    t.string   "date_of_starting"
    t.string   "expected_date_of_completion"
    t.string   "client"
    t.string   "priority"
    t.string   "category"
    t.string   "primary_owner"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "completion_status"
    t.string   "status"
    t.string   "closing_comments"
    t.string   "closing_date"
    t.string   "reason_for_abondoned"
    t.string   "reason_for_suspend"
    t.string   "reason_for_suspending"
    t.string   "comments"
    t.string   "suspended_date"
    t.string   "trigger_date"
    t.string   "number_of_subprojects"
    t.string   "subprojects_completed"
    t.string   "subprojects_in_progress"
    t.string   "subprojects_scrapped"
  end

  create_table "subprojects", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "employee_id"
    t.string   "project_name"
    t.integer  "subproject_id"
    t.string   "subproject_name"
    t.string   "subproject_description"
    t.string   "constraints"
    t.string   "primary_owner"
    t.integer  "date_of_starting"
    t.integer  "expected_date_of_completion"
    t.integer  "number_of_tasks"
    t.integer  "number_of_tasks_completed"
    t.integer  "number_of_tasks_in_progress"
    t.integer  "tasks_scrapped"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "status"
    t.string   "owner"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "employee_id"
    t.integer  "subproject_id"
    t.string   "project_name"
    t.string   "subproject_name"
    t.string   "task_name"
    t.string   "priority"
    t.string   "status"
    t.string   "owner"
    t.integer  "start_date"
    t.integer  "end_date"
    t.string   "expected_number_of_days"
    t.integer  "actual_start_date"
    t.integer  "expected_end_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

end
