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

ActiveRecord::Schema.define(version: 20160628140633) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sleep_cycles", force: :cascade do |t|
    t.string   "cycle_name"
    t.integer  "days"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sleep_cycles_on_user_id", using: :btree
  end

  create_table "tracks", force: :cascade do |t|
    t.string   "date"
    t.integer  "day"
    t.integer  "hours"
    t.string   "mood"
    t.string   "product"
    t.text     "notes"
    t.integer  "sleep_cycle_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["sleep_cycle_id"], name: "index_tracks_on_sleep_cycle_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "birthdate"
    t.string   "email"
    t.string   "gender"
    t.string   "password_digest"
    t.text     "bio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "image"
  end

  add_foreign_key "sleep_cycles", "users"
  add_foreign_key "tracks", "sleep_cycles"
end
