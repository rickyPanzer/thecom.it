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

ActiveRecord::Schema.define(:version => 20111107021548) do

  create_table "answers", :force => true do |t|
    t.integer  "profile_id"
    t.text     "answer"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "picture"
    t.string   "email"
    t.integer  "fbID"
    t.integer  "hashEmailVerify"
    t.integer  "activeEmail"
    t.integer  "hashPashChange"
    t.datetime "PassChangeRequest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "birthdate"
    t.integer  "points"
  end

  create_table "questions", :force => true do |t|
    t.integer  "startup_id"
    t.integer  "questiontype_id"
    t.string   "text"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questiontypes", :force => true do |t|
    t.string   "name"
    t.integer  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "startups", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "picture"
    t.string   "email"
    t.integer  "fbID"
    t.integer  "hashEmailVerify"
    t.integer  "activeEmail"
    t.integer  "hashPashChange"
    t.datetime "PassChangeRequest"
    t.string   "website"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
