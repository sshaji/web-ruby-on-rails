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

ActiveRecord::Schema.define(version: 2000) do

  create_table "offers", force: :cascade do |t|
    t.string "user_username", limit: 60
    t.text   "offerdetails",  limit: 255
  end

  add_index "offers", ["user_username"], name: "fk_rails_ff1cb6dc57", using: :btree

  create_table "users", primary_key: "username", force: :cascade do |t|
    t.string  "password",        limit: 60
    t.string  "firstname",       limit: 60
    t.string  "lastname",        limit: 60
    t.string  "email",           limit: 60
    t.boolean "enabled",                     default: true
    t.string  "remember_digest", limit: 255
  end

  add_foreign_key "offers", "users", column: "user_username", primary_key: "username", on_update: :cascade, on_delete: :cascade
end
