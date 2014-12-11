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

ActiveRecord::Schema.define(version: 20141211143006) do

  create_table "heros", force: true do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "portrait_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matchups", force: true do |t|
    t.integer  "first_hero_id"
    t.integer  "second_hero_id"
    t.decimal  "advantage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matchups", ["first_hero_id"], name: "index_matchups_on_first_hero_id"
  add_index "matchups", ["second_hero_id"], name: "index_matchups_on_second_hero_id"

end
