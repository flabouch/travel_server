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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111127213910) do

  create_table "destinations", :force => true do |t|
    t.string   "name"
    t.date     "arrival"
    t.date     "departure"
    t.integer  "trip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "transportation_arrival_id"
    t.integer  "transportation_departure_id"
  end

  create_table "profiles", :force => true do |t|
    t.string   "full_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "transportations", :force => true do |t|
    t.string   "mode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transportations", ["mode"], :name => "index_transportations_on_mode", :unique => true

  create_table "trips", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "public_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",            :null => false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
