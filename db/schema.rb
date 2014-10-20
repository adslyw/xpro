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

ActiveRecord::Schema.define(:version => 20141009010741) do

  create_table "assets", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "uploaded_file_file_name"
    t.string   "uploaded_file_content_type"
    t.integer  "uploaded_file_file_size"
    t.datetime "uploaded_file_updated_at"
  end

  add_index "assets", ["user_id"], :name => "index_assets_on_user_id"

  create_table "menus", :force => true do |t|
    t.string   "title"
    t.string   "icon"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ocs_states", :id => false, :force => true do |t|
    t.string   "service_state"
    t.string   "state_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "f_prod_id"
    t.string   "f_prod_name"
    t.integer  "f_if_3g"
    t.integer  "f_prod_type"
    t.integer  "f_service_kind"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "products", ["f_prod_id"], :name => "index_products_on_f_prod_id"
  add_index "products", ["f_prod_name"], :name => "index_products_on_f_prod_name"

  create_table "submenus", :force => true do |t|
    t.string   "title"
    t.string   "icon"
    t.string   "url"
    t.integer  "menu_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "submenus", ["menu_id"], :name => "index_submenus_on_menu_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
