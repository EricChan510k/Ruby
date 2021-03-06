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

ActiveRecord::Schema.define(:version => 20140320170416) do

  create_table "auth_tokens", :force => true do |t|
    t.integer  "user_id"
    t.string   "token"
    t.string   "device_id"
    t.string   "device_type"
    t.string   "app_type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "customers", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.float    "balance"
    t.float    "available_balance"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "invitations", :force => true do |t|
    t.integer  "vendor_id"
    t.integer  "sender_id"
    t.string   "recipient_email"
    t.string   "token"
    t.string   "state",           :default => "pending", :null => false
    t.datetime "sent_at"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  create_table "payment_holds", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "service_contract_id"
    t.float    "debit"
    t.float    "credit"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "payment_transactions", :force => true do |t|
    t.string   "sender_type"
    t.integer  "sender_id"
    t.string   "receiver_type"
    t.integer  "receiver_id"
    t.integer  "contract_id"
    t.float    "debit"
    t.float    "credit"
    t.string   "transaction_foreign_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "service_contracts", :force => true do |t|
    t.datetime "parked_at"
    t.datetime "departed_at"
    t.integer  "service_offer_id"
    t.integer  "service_request_id"
    t.string   "state"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "service_offers", :force => true do |t|
    t.integer  "vendor_id"
    t.integer  "vendor_terms_id"
    t.integer  "service_request_id"
    t.string   "state"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "service_requests", :force => true do |t|
    t.string   "creation_date"
    t.integer  "customer_id"
    t.integer  "vehicle_id"
    t.string   "address"
    t.string   "location"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "expiry"
    t.text     "client_guid"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "role"
    t.integer  "invitation_id"
    t.integer  "invitation_limit"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vehicles", :force => true do |t|
    t.string   "license_plate"
    t.string   "make"
    t.string   "model"
    t.string   "color"
    t.integer  "customer_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end
  create_table "vendor_terms", :force => true do |t|
    t.integer  "vendor_id"
    t.boolean  "enabled"
    t.float    "hourly_rate"
    t.float    "max_hourly_hours"
    t.float    "flat_rate"
    t.float    "max_flat_hours"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "vendor_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "vendor_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "vendors", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "address"
    t.string   "location"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
