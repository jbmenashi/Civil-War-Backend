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

ActiveRecord::Schema.define(version: 2019_02_28_000550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "circles", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "day_id"
    t.float "lat"
    t.float "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_circles_on_day_id"
    t.index ["event_id"], name: "index_circles_on_event_id"
  end

  create_table "days", force: :cascade do |t|
    t.integer "slider_id"
    t.string "log_string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "info"
    t.string "link"
    t.string "shorthand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pinpoints", force: :cascade do |t|
    t.bigint "subject_id"
    t.bigint "day_id"
    t.float "lat"
    t.float "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_pinpoints_on_day_id"
    t.index ["subject_id"], name: "index_pinpoints_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title"
    t.string "info"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "circles", "days"
  add_foreign_key "circles", "events"
  add_foreign_key "pinpoints", "days"
  add_foreign_key "pinpoints", "subjects"
end
