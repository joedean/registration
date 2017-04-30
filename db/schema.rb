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

ActiveRecord::Schema.define(version: 20170430001750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "class_rooms", force: :cascade do |t|
    t.bigint "company_id"
    t.string "name"
    t.string "size"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_class_rooms_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "web_site"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.bigint "company_id"
    t.string "first_name"
    t.string "last_name"
    t.string "mobile_phone"
    t.string "email"
    t.string "start_date"
    t.string "end_date"
    t.string "birth_date"
    t.boolean "active"
    t.boolean "contractor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_teachers_on_company_id"
  end

  add_foreign_key "class_rooms", "companies"
  add_foreign_key "teachers", "companies"
end
