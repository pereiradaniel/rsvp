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

ActiveRecord::Schema.define(version: 20150915040412) do

  create_table "cuisines", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuisines_restaurants", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "cuisine_id"
  end

  add_index "cuisines_restaurants", ["cuisine_id"], name: "index_cuisines_restaurants_on_cuisine_id"
  add_index "cuisines_restaurants", ["restaurant_id"], name: "index_cuisines_restaurants_on_restaurant_id"

  create_table "reservations", force: :cascade do |t|
    t.datetime "date_time"
    t.integer  "party_size"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.integer  "restaurant_id"
  end

  add_index "reservations", ["restaurant_id"], name: "index_reservations_on_restaurant_id"
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id"

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.integer  "capacity"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "province"
    t.string   "city"
    t.string   "street"
    t.string   "postal_code"
    t.string   "phone_number"
    t.integer  "owner_id"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
