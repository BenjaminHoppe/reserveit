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

ActiveRecord::Schema.define(version: 2019_02_20_202410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "menu_items", force: :cascade do |t|
    t.integer "restaurant_id"
    t.string "dish"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "restaurant_id"
    t.datetime "date"
    t.integer "party_size"
    t.integer "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.datetime "open_from"
    t.datetime "open_until"
    t.integer "capacity"
    t.integer "max_reservation_size"
    t.integer "price_range"
    t.text "summary"
    t.integer "user_id"
    t.string "address"
    t.string "neighbourhood"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mon_open_from"
    t.integer "mon_open_until"
    t.integer "tues_open_from"
    t.integer "tues_open_until"
    t.integer "wed_open_from"
    t.integer "wed_open_until"
    t.integer "thurs_open_until"
    t.integer "thurs_open_from"
    t.integer "fri_open_from"
    t.integer "fri_open_until"
    t.integer "sat_open_from"
    t.integer "sat_open_until"
    t.integer "sun_open_from"
    t.integer "sun_open_until"
    t.boolean "user_favourite"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "loyalty_points"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "phone_number"
  end

end
