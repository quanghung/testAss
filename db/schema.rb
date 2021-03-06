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

ActiveRecord::Schema.define(version: 20140117082453) do

  create_table "skill_details", force: true do |t|
    t.integer  "skill_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skill_details", ["id"], name: "index_skill_details_on_id", unique: true, using: :btree
  add_index "skill_details", ["skill_id"], name: "index_skill_details_on_skill_id_and_created_at", using: :btree

  create_table "skills", force: true do |t|
    t.string   "name",       limit: 512, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["id"], name: "index_skills_on_id", unique: true, using: :btree

  create_table "user_skill_details", force: true do |t|
    t.integer  "user_skill_id"
    t.integer  "skill_detail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_skill_details", ["id"], name: "index_user_skill_details_on_id", unique: true, using: :btree
  add_index "user_skill_details", ["skill_detail_id"], name: "index_user_skill_details_on_skill_detail_id_and_created_at", using: :btree
  add_index "user_skill_details", ["user_skill_id"], name: "index_user_skill_details_on_user_skill_id_and_created_at", using: :btree

  create_table "user_skills", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "skill_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_skills", ["id"], name: "index_user_skills_on_id", unique: true, using: :btree
  add_index "user_skills", ["skill_id"], name: "index_user_skills_on_skill_id_and_created_at", using: :btree
  add_index "user_skills", ["user_id"], name: "index_user_skills_on_user_id_and_created_at", using: :btree

  create_table "users", force: true do |t|
    t.string   "name",            limit: 512, null: false
    t.string   "email",                       null: false
    t.string   "password_digest", limit: 256, null: false
    t.string   "remember_token",  limit: 256
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["id"], name: "index_users_on_id", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", length: {"remember_token"=>255}, using: :btree

end
