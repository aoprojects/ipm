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

ActiveRecord::Schema.define(version: 20160915045643) do

  create_table "properties", force: :cascade do |t|
    t.string   "street_address"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "state"
    t.string   "county"
    t.string   "country"
    t.string   "property_type"
    t.boolean  "off_market"
    t.integer  "finished_sq_ft"
    t.string   "condition"
    t.string   "deal_type"
    t.integer  "asking_price"
    t.string   "negotiable"
    t.string   "ideal_financing_method"
    t.string   "financial_summary"
    t.integer  "projected_profit"
    t.string   "property_access"
    t.text     "additional_details"
    t.string   "preferred_contact_details"
    t.string   "also_listed_on"
    t.integer  "user_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "direct_to_owner"
  end

  add_index "properties", ["user_id"], name: "index_properties_on_user_id"

  create_table "search_criteria", force: :cascade do |t|
    t.string   "search_street_address"
    t.string   "search_city"
    t.string   "search_state"
    t.string   "search_county"
    t.string   "search_country"
    t.string   "search_property_type"
    t.boolean  "search_off_market"
    t.integer  "search_finished_sq_ft_max"
    t.integer  "search_finished_sq_ft_min"
    t.integer  "asking_price_min"
    t.integer  "asking_price_max"
    t.string   "search_ideal_financing_method"
    t.string   "search_deal_type"
    t.string   "search_condition"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "search_criteria", ["user_id"], name: "index_search_criteria_on_user_id"

  create_table "users", force: :cascade do |t|
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
