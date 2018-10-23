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

ActiveRecord::Schema.define(version: 20181020072033) do

  create_table "biz_offers", force: :cascade do |t|
    t.integer  "business_id"
    t.integer  "percentage",  default: 10, null: false
    t.integer  "requirement", default: 0,  null: false
    t.string   "offer"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "biz_offers", ["business_id"], name: "index_biz_offers_on_business_id"

  create_table "businesses", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean  "allow_password_change",  default: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.string   "email"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zipcode"
    t.string   "phone_number"
    t.string   "website"
    t.string   "type_of"
    t.string   "description"
    t.boolean  "location_specific"
    t.text     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "businesses", ["confirmation_token"], name: "index_businesses_on_confirmation_token", unique: true
  add_index "businesses", ["email"], name: "index_businesses_on_email", unique: true
  add_index "businesses", ["name"], name: "index_businesses_on_name", unique: true
  add_index "businesses", ["reset_password_token"], name: "index_businesses_on_reset_password_token", unique: true
  add_index "businesses", ["uid", "provider"], name: "index_businesses_on_uid_and_provider", unique: true

  create_table "deals", force: :cascade do |t|
    t.integer  "business_id"
    t.integer  "originzation_id"
    t.boolean  "biz_accepted"
    t.boolean  "org_accepted"
    t.integer  "biz_offer_id"
    t.integer  "percentage"
    t.integer  "requirement"
    t.string   "offer"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "org_offers", force: :cascade do |t|
    t.integer  "orginizations_id"
    t.integer  "members"
    t.integer  "percentage"
    t.string   "offer"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "org_offers", ["orginizations_id"], name: "index_org_offers_on_orginizations_id"

  create_table "orginizations", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean  "allow_password_change",  default: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.string   "email"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zipcode"
    t.string   "phone_number"
    t.string   "website"
    t.string   "type_of"
    t.string   "description"
    t.boolean  "public"
    t.boolean  "location_specific"
    t.text     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orginizations", ["confirmation_token"], name: "index_orginizations_on_confirmation_token", unique: true
  add_index "orginizations", ["email"], name: "index_orginizations_on_email", unique: true
  add_index "orginizations", ["name"], name: "index_orginizations_on_name", unique: true
  add_index "orginizations", ["reset_password_token"], name: "index_orginizations_on_reset_password_token", unique: true
  add_index "orginizations", ["uid", "provider"], name: "index_orginizations_on_uid_and_provider", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean  "allow_password_change",  default: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "image"
    t.text     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true

end
