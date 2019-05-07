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

ActiveRecord::Schema.define(version: 20190507151331) do

  create_table "consoles", force: :cascade do |t|
    t.string  "name"
    t.string  "company"
    t.string  "games"
    t.date    "date_added"
    t.integer "generation"
    t.integer "user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string  "name"
    t.string  "developer"
    t.string  "genre"
    t.integer "review"
    t.date    "date_added"
    t.integer "console_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "username"
    t.string "consoles"
    t.string "games"
  end

end
