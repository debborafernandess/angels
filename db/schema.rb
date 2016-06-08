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

ActiveRecord::Schema.define(version: 20160607233137) do

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "market_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "groups", ["market_id"], name: "index_groups_on_market_id"

  create_table "groups_investors", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "investor_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "groups_investors", ["group_id"], name: "index_groups_investors_on_group_id"
  add_index "groups_investors", ["investor_id"], name: "index_groups_investors_on_investor_id"

  create_table "investors", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "nickname"
    t.text     "bio"
    t.float    "min_investment"
    t.float    "max_investment"
  end

  add_index "investors", ["email"], name: "index_investors_on_email", unique: true
  add_index "investors", ["reset_password_token"], name: "index_investors_on_reset_password_token", unique: true

  create_table "markets", force: :cascade do |t|
    t.integer  "investors"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "project_id"
  end

  create_table "markets_projects", id: false, force: :cascade do |t|
    t.integer "market_id",  null: false
    t.integer "project_id", null: false
  end

  add_index "markets_projects", ["market_id", "project_id"], name: "index_markets_projects_on_market_id_and_project_id"
  add_index "markets_projects", ["project_id", "market_id"], name: "index_markets_projects_on_project_id_and_market_id"

  create_table "projects", force: :cascade do |t|
    t.text     "value_proposal"
    t.string   "target"
    t.text     "core_business"
    t.text     "partnerships"
    t.text     "pricing"
    t.text     "expenses"
    t.text     "main_resources"
    t.text     "communication"
    t.text     "relationship"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "name"
    t.text     "description"
    t.string   "partner"
    t.integer  "group_id"
  end

  add_index "projects", ["group_id"], name: "index_projects_on_group_id"

end
