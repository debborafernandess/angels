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

ActiveRecord::Schema.define(version: 20_160_601_231_911) do
  create_table 'markets', force: :cascade do |t|
    t.integer  'investors'
    t.string   'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer  'project_id'
  end

  create_table 'markets_projects', id: false, force: :cascade do |t|
    t.integer 'market_id',  null: false
    t.integer 'project_id', null: false
  end

  add_index 'markets_projects', %w(market_id project_id), name: 'index_markets_projects_on_market_id_and_project_id'
  add_index 'markets_projects', %w(project_id market_id), name: 'index_markets_projects_on_project_id_and_market_id'

  create_table 'projects', force: :cascade do |t|
    t.text     'value_proposal'
    t.string   'target'
    t.text     'core_business'
    t.text     'partnerships'
    t.text     'pricing'
    t.text     'expenses'
    t.text     'main_resources'
    t.text     'communication'
    t.text     'relationship'
    t.datetime 'created_at',     null: false
    t.datetime 'updated_at',     null: false
    t.string   'name'
  end
end
