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

ActiveRecord::Schema.define(:version => 20141215122412) do

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

  create_table "bundle_types", :id => false, :force => true do |t|
    t.integer  "if_wo_family"
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "cb_acts", :id => false, :force => true do |t|
    t.string  "area_id",            :limit => 20
    t.string  "area_id_cbss",       :limit => 20
    t.string  "city_id",            :limit => 20
    t.string  "city_id_cbss",       :limit => 20
    t.string  "activity_subs_id",   :limit => 20
    t.string  "service_type",       :limit => 20
    t.string  "user_id",            :limit => 40
    t.string  "device_number",      :limit => 60
    t.string  "pay_mode",           :limit => 10
    t.string  "user_type",          :limit => 30
    t.string  "channel_id",         :limit => 30
    t.string  "cust_type",          :limit => 2
    t.string  "product_id",         :limit => 20
    t.string  "product_class",      :limit => 30
    t.string  "activity_type_cbss", :limit => 50
    t.string  "activity_id",        :limit => 50
    t.string  "activity_type",      :limit => 50
    t.string  "protocal_month",     :limit => 10
    t.string  "mon_limit_charge",   :limit => 20
    t.string  "res_type",           :limit => 50
    t.string  "res_belong_type",    :limit => 2
    t.string  "res_imei",           :limit => 20
    t.string  "res_brand",          :limit => 50
    t.string  "res_brand_cbss",     :limit => 50
    t.string  "res_mode",           :limit => 50
    t.string  "res_mode_cbss",      :limit => 50
    t.decimal "res_num",                           :precision => 15, :scale => 2
    t.string  "res_cost",           :limit => 256
    t.decimal "res_price",                         :precision => 15, :scale => 2
    t.decimal "allowance_fee",                     :precision => 15, :scale => 2
    t.decimal "deposit_fee",                       :precision => 15, :scale => 2
    t.decimal "pre_fee",                           :precision => 15, :scale => 2
    t.decimal "present_fee",                       :precision => 15, :scale => 2
    t.decimal "mon_return_rate",                   :precision => 15, :scale => 2
    t.string  "accept_time",        :limit => 14
    t.string  "start_date",         :limit => 14
    t.string  "end_date",           :limit => 14
    t.string  "deposit_type",       :limit => 32
    t.string  "is_valid",           :limit => 2
    t.string  "is_this_expire",     :limit => 2
    t.string  "is_this_innet",      :limit => 2
    t.string  "is_this_add",        :limit => 2
    t.string  "is_this_dev",        :limit => 2
    t.string  "is_this_break",      :limit => 2
    t.string  "is_this_lost",       :limit => 2
    t.string  "is_card",            :limit => 2
    t.string  "channel_type",       :limit => 10
    t.string  "fee_date",           :limit => 6
  end

  add_index "cb_acts", ["device_number"], :name => "index_cb_acts_on_device_number"
  add_index "cb_acts", ["product_id"], :name => "index_cb_acts_on_product_id"
  add_index "cb_acts", ["user_id"], :name => "index_cb_acts_on_user_id"

  create_table "cb_areas", :id => false, :force => true do |t|
    t.string "area_code",        :limit => 8
    t.string "area_name",        :limit => 100
    t.string "user_area_code",   :limit => 10
    t.string "parent_area_code", :limit => 8
    t.string "start_date",       :limit => 14
    t.string "end_date",         :limit => 14
    t.string "area_level",       :limit => 2
  end

  create_table "cb_charges", :id => false, :force => true do |t|
    t.string  "area_id",         :limit => 20
    t.string  "area_id_cbss",    :limit => 20
    t.string  "city_id",         :limit => 20
    t.string  "city_id_cbss",    :limit => 20
    t.string  "user_id",         :limit => 40
    t.string  "cust_id",         :limit => 40
    t.string  "acct_id",         :limit => 20
    t.string  "device_number",   :limit => 60
    t.string  "service_type",    :limit => 20
    t.string  "owe_bill_flag",   :limit => 4
    t.string  "is_group_item",   :limit => 1
    t.string  "charge_code",     :limit => 10
    t.string  "charge_code_sum", :limit => 10
    t.decimal "acct_fee",                      :precision => 15, :scale => 2
    t.decimal "b_discnt",                      :precision => 15, :scale => 2
    t.decimal "a_discnt",                      :precision => 15, :scale => 2
    t.decimal "adjust_before",                 :precision => 15, :scale => 2
    t.decimal "adjust_after",                  :precision => 15, :scale => 2
    t.string  "fee_date",        :limit => 6
  end

  add_index "cb_charges", ["acct_id"], :name => "index_cb_charges_on_acct_id"
  add_index "cb_charges", ["cust_id"], :name => "index_cb_charges_on_cust_id"
  add_index "cb_charges", ["user_id"], :name => "index_cb_charges_on_user_id"

  create_table "cb_owes", :id => false, :force => true do |t|
    t.string  "area_id",      :limit => 20
    t.string  "area_id_cbss", :limit => 20
    t.string  "city_id",      :limit => 20
    t.string  "city_id_cbss", :limit => 20
    t.string  "user_id",      :limit => 40
    t.string  "acct_id",      :limit => 20
    t.string  "service_type", :limit => 20
    t.string  "acct_month",   :limit => 10
    t.decimal "owe_fee",                    :precision => 15, :scale => 2
    t.decimal "recover_fee",                :precision => 15, :scale => 2
    t.string  "fee_date",     :limit => 6
  end

  add_index "cb_owes", ["acct_id"], :name => "index_cb_owes_on_acct_id"
  add_index "cb_owes", ["user_id"], :name => "index_cb_owes_on_user_id"

  create_table "cb_products", :primary_key => "product_id", :force => true do |t|
    t.string "product_name", :limit => 200
    t.string "product_mode", :limit => 20
  end

  add_index "cb_products", ["product_id"], :name => "index_cb_products_on_product_id"

  create_table "cb_sings", :id => false, :force => true do |t|
    t.string  "area_id",             :limit => 20
    t.string  "area_id_cbss",        :limit => 20
    t.string  "city_id",             :limit => 20
    t.string  "city_id_cbss",        :limit => 20
    t.string  "user_id",             :limit => 40
    t.string  "cust_id",             :limit => 40
    t.string  "acct_id",             :limit => 20
    t.string  "service_type",        :limit => 20
    t.string  "first_call_time",     :limit => 14
    t.string  "is_call",             :limit => 1
    t.string  "is_long_call",        :limit => 2
    t.string  "is_roam_call",        :limit => 1
    t.string  "is_video_call",       :limit => 2
    t.string  "is_change_call",      :limit => 1
    t.string  "is_sms",              :limit => 1
    t.string  "is_gprs",             :limit => 1
    t.string  "is_incr",             :limit => 2
    t.string  "is_active",           :limit => 1
    t.string  "is_only_call",        :limit => 2
    t.string  "is_only_sms",         :limit => 2
    t.string  "is_only_incr",        :limit => 2
    t.string  "is_p2p_sms",          :limit => 1
    t.string  "is_card",             :limit => 2
    t.string  "is_roam_flux",        :limit => 1
    t.string  "use_status",          :limit => 1
    t.string  "is_initv",            :limit => 2
    t.string  "is_calling",          :limit => 2
    t.integer "call_duration"
    t.integer "call_times"
    t.integer "mobile_times"
    t.integer "sms_num"
    t.decimal "flux_up",                           :precision => 10, :scale => 0
    t.decimal "flux_down",                         :precision => 10, :scale => 0
    t.integer "flux_dura"
    t.integer "flux_times"
    t.integer "local_calling_dura"
    t.integer "local_called_dura"
    t.integer "roam_calling_dura"
    t.integer "roam_called_dura"
    t.integer "toll_dura"
    t.integer "local_calling_times"
    t.integer "local_called_times"
    t.integer "oram_calling_times"
    t.integer "roam_called_times"
    t.integer "toll_times"
    t.integer "local_calling_nums"
    t.integer "local_called_nums"
    t.integer "roam_calling_nums"
    t.integer "roam_called_nums"
    t.integer "toll_nums"
    t.string  "fee_date",            :limit => 6
  end

  add_index "cb_sings", ["acct_id"], :name => "index_cb_sings_on_acct_id"
  add_index "cb_sings", ["cust_id"], :name => "index_cb_sings_on_cust_id"
  add_index "cb_sings", ["user_id"], :name => "index_cb_sings_on_user_id"

  create_table "cb_users", :id => false, :force => true do |t|
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
    t.string  "fee_date",             :limit => 6
  end

  add_index "cb_users", ["cust_id"], :name => "index_user_infos_on_cust_id"
  add_index "cb_users", ["device_integer"], :name => "index_user_infos_on_device_integer"
  add_index "cb_users", ["usecust_id"], :name => "index_user_infos_on_usecust_id"
  add_index "cb_users", ["user_id"], :name => "index_user_infos_on_user_id"

  create_table "cities", :id => false, :force => true do |t|
    t.string "f_area_id"
    t.string "f_area_name"
    t.string "city_name"
  end

  add_index "cities", ["f_area_id"], :name => "index_cities_on_f_area_id"

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0, :null => false
    t.integer  "attempts",   :default => 0, :null => false
    t.text     "handler",                   :null => false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "inputs", :force => true do |t|
    t.integer  "asset_id"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "inputs", ["asset_id"], :name => "index_inputs_on_asset_id"

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

  create_table "outputs", :force => true do |t|
    t.integer  "asset_id"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "outputs", ["asset_id"], :name => "index_outputs_on_asset_id"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "posts", ["user_id"], :name => "index_posts_on_user_id"

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

  create_table "redactor_assets", :force => true do |t|
    t.integer  "user_id"
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "redactor_assets", ["assetable_type", "assetable_id"], :name => "idx_redactor_assetable"
  add_index "redactor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_redactor_assetable_type"

  create_table "submenus", :force => true do |t|
    t.string   "title"
    t.string   "icon"
    t.string   "url"
    t.integer  "menu_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "submenus", ["menu_id"], :name => "index_submenus_on_menu_id"

  create_table "tasks", :force => true do |t|
    t.string   "description"
    t.integer  "input_id"
    t.integer  "output_id"
    t.integer  "state"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "tasks", ["input_id"], :name => "index_tasks_on_input_id"
  add_index "tasks", ["output_id"], :name => "index_tasks_on_output_id"

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
