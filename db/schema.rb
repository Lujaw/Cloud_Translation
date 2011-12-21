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

ActiveRecord::Schema.define(:version => 20111221145812) do

  create_table "requestors", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "credits"
  end

  add_index "requestors", ["email"], :name => "index_requestors_on_email", :unique => true
  add_index "requestors", ["reset_password_token"], :name => "index_requestors_on_reset_password_token", :unique => true

  create_table "translation_texts", :force => true do |t|
    t.string   "from"
    t.string   "to"
    t.text     "data"
    t.integer  "reward"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workers", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "workers", ["email"], :name => "index_workers_on_email", :unique => true
  add_index "workers", ["reset_password_token"], :name => "index_workers_on_reset_password_token", :unique => true

  create_table "works", :force => true do |t|
    t.string   "from"
    t.string   "to"
    t.text     "translation_text"
    t.text     "translated_test"
    t.text     "additional_details"
    t.float    "reward"
    t.integer  "requestor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "works", ["requestor_id"], :name => "index_works_on_requestor_id"

end
