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

ActiveRecord::Schema.define(version: 20140722045002) do

  create_table "politicians", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.string   "position1"
    t.string   "position2"
    t.string   "district"
    t.string   "party"
    t.integer  "sworn_in"
    t.string   "person_defeated"
    t.float    "votes_w_party"
    t.float    "votes_vs_party"
    t.float    "abstains"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state_id"
  end

  create_table "states", force: true do |t|
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "written_statements", force: true do |t|
    t.string   "statements"
    t.text     "body"
    t.string   "path"
    t.integer  "politician_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
