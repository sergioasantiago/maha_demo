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

ActiveRecord::Schema.define(version: 20150402181532) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies_consultants", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "consultant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "companies_consultants", ["company_id"], name: "index_companies_consultants_on_company_id"
  add_index "companies_consultants", ["consultant_id"], name: "index_companies_consultants_on_consultant_id"

  create_table "consultants", force: :cascade do |t|
    t.string   "name"
    t.integer  "network_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "consultants", ["network_id"], name: "index_consultants_on_network_id"

  create_table "networks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
