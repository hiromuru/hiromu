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

ActiveRecord::Schema.define(version: 20140629113017) do

  create_table "exam_skils", force: true do |t|
    t.integer  "exam_id"
    t.integer  "skil_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exams", force: true do |t|
    t.string   "title"
    t.text     "discription"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "c_at"
    t.string   "url"
  end

  create_table "images", force: true do |t|
    t.string   "image"
    t.integer  "parent_id"
    t.string   "parent_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skils", force: true do |t|
    t.string   "name"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sors"
    t.text     "discription"
  end

end
