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

ActiveRecord::Schema.define(:version => 20141027064815) do

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

  create_table "cb_products", :id => false, :force => true do |t|
    t.string "product_id",   :limit => 10
    t.string "product_name", :limit => 200
    t.string "product_mode", :limit => 20
  end

  add_index "cb_products", ["product_id"], :name => "index_cb_products_on_product_id"

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

  create_table "user_infos", :id => false, :force => true do |t|
    t.string  "user_id",              :limit => 40
    t.string  "cust_id",              :limit => 40
    t.string  "cust_type",            :limit => 2
    t.string  "usecust_id",           :limit => 40
    t.string  "service_type",         :limit => 20
    t.string  "brand_id",             :limit => 10
    t.string  "brand_id_cbss",        :limit => 10
    t.string  "product_id",           :limit => 10
    t.string  "product_class",        :limit => 20
    t.string  "area_id",              :limit => 20
    t.string  "area_id_cbss",         :limit => 20
    t.string  "city_id",              :limit => 10
    t.string  "city_id_cbss",         :limit => 10
    t.string  "user_diff_code",       :limit => 4
    t.string  "user_type",            :limit => 10
    t.string  "user_type_cbss",       :limit => 10
    t.string  "device_integer",       :limit => 30
    t.string  "net_type_cbss",        :limit => 20
    t.integer "score_value"
    t.string  "credit_class",         :limit => 32
    t.integer "basic_credit_value"
    t.integer "credit_value"
    t.string  "is_acct",              :limit => 1
    t.string  "pay_mode",             :limit => 10
    t.string  "pay_mode_cbss",        :limit => 10
    t.string  "innet_date",           :limit => 14
    t.string  "create_date",          :limit => 14
    t.string  "oper_date",            :limit => 14
    t.string  "open_mode",            :limit => 1
    t.string  "open_depart_id",       :limit => 10
    t.string  "in_depart_id",         :limit => 10
    t.string  "remove_tag",           :limit => 1
    t.string  "close_date",           :limit => 14
    t.string  "remove_area_id",       :limit => 20
    t.string  "remove_area_id_cbss",  :limit => 20
    t.string  "remove_city_id",       :limit => 10
    t.string  "remove_city_id_cbss",  :limit => 10
    t.string  "remove_depart_id",     :limit => 10
    t.string  "remove_reason_code",   :limit => 2
    t.string  "pre_destroy_time",     :limit => 14
    t.string  "first_call_time",      :limit => 14
    t.string  "last_stop_date",       :limit => 14
    t.string  "user_status",          :limit => 10
    t.string  "user_status_cbss",     :limit => 10
    t.string  "update_time",          :limit => 14
    t.string  "assure_cust_id",       :limit => 40
    t.string  "assure_type_code",     :limit => 1
    t.string  "assure_date",          :limit => 14
    t.string  "developer_id",         :limit => 20
    t.string  "develop_date",         :limit => 14
    t.string  "develop_area_id",      :limit => 20
    t.string  "develop_area_id_cbss", :limit => 20
    t.string  "develop_city_id",      :limit => 20
    t.string  "develop_city_id_cbss", :limit => 10
    t.string  "channel_id",           :limit => 10
    t.string  "channel_type",         :limit => 10
    t.string  "changeuser_date",      :limit => 14
    t.string  "innet_method",         :limit => 10
    t.string  "active_type",          :limit => 16
    t.string  "main_discnt_code",     :limit => 10
    t.string  "is_innet",             :limit => 1
    t.string  "is_card",              :limit => 2
    t.integer "innet_months"
    t.integer "stop_month"
    t.string  "stop_type",            :limit => 10
    t.string  "is_stat",              :limit => 2
    t.string  "is_add",               :limit => 2
    t.string  "add_type",             :limit => 3
    t.string  "is_this_dev",          :limit => 2
    t.string  "is_lost",              :limit => 2
    t.string  "lost_type",            :limit => 3
    t.string  "is_this_break",        :limit => 2
    t.string  "is_change",            :limit => 2
    t.string  "is_group",             :limit => 2
  end

  add_index "user_infos", ["cust_id"], :name => "index_user_infos_on_cust_id"
  add_index "user_infos", ["device_integer"], :name => "index_user_infos_on_device_integer"
  add_index "user_infos", ["usecust_id"], :name => "index_user_infos_on_usecust_id"
  add_index "user_infos", ["user_id"], :name => "index_user_infos_on_user_id"

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
