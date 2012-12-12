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

ActiveRecord::Schema.define(:version => 20121212220100) do

  create_table "children", :force => true do |t|
    t.integer  "sequence_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "alias"
    t.date     "dob"
    t.string   "mother_name"
    t.string   "sex"
    t.string   "street"
    t.string   "state"
    t.string   "city"
    t.string   "e_name"
    t.string   "e_alias"
    t.string   "e_relationship"
    t.string   "e_street"
    t.string   "e_state"
    t.string   "e_city"
    t.integer  "e_telephone"
    t.string   "c_clinic"
    t.string   "c_street"
    t.string   "c_state"
    t.string   "c_city"
    t.integer  "c_telephone"
    t.string   "d_pediatrician"
    t.string   "d_clinic"
    t.string   "d_street"
    t.string   "d_state"
    t.string   "d_city"
    t.integer  "d_telephone"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "immunization"
    t.string   "diagnosis"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
