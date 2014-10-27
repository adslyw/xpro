class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos, id:false do |t|
      t.string :user_id, :limit => 40
      t.string :cust_id, :limit => 40
      t.string :cust_type, :limit => 2
      t.string :usecust_id, :limit => 40
      t.string :service_type, :limit => 20
      t.string :brand_id, :limit => 10
      t.string :brand_id_cbss, :limit => 10
      t.string :product_id, :limit => 10
      t.string :product_class, :limit => 20
      t.string :area_id, :limit => 20
      t.string :area_id_cbss, :limit => 20
      t.string :city_id, :limit => 10
      t.string :city_id_cbss, :limit => 10
      t.string :user_diff_code, :limit => 4
      t.string :user_type, :limit => 10
      t.string :user_type_cbss, :limit => 10
      t.string :device_integer, :limit => 30
      t.string :net_type_cbss, :limit => 20
      t.integer :score_value
      t.string :credit_class, :limit => 32
      t.integer :basic_credit_value
      t.integer :credit_value
      t.string :is_acct, :limit => 1
      t.string :pay_mode, :limit => 10
      t.string :pay_mode_cbss, :limit => 10
      t.string :innet_date, :limit => 14
      t.string :create_date, :limit => 14
      t.string :oper_date, :limit => 14
      t.string :open_mode, :limit => 1
      t.string :open_depart_id, :limit => 10
      t.string :in_depart_id, :limit => 10
      t.string :remove_tag, :limit => 1
      t.string :close_date, :limit => 14
      t.string :remove_area_id, :limit => 20
      t.string :remove_area_id_cbss, :limit => 20
      t.string :remove_city_id, :limit => 10
      t.string :remove_city_id_cbss, :limit => 10
      t.string :remove_depart_id, :limit => 10
      t.string :remove_reason_code, :limit => 2
      t.string :pre_destroy_time, :limit => 14
      t.string :first_call_time, :limit => 14
      t.string :last_stop_date, :limit => 14
      t.string :user_status, :limit => 10
      t.string :user_status_cbss, :limit => 10
      t.string :update_time, :limit => 14
      t.string :assure_cust_id, :limit => 40
      t.string :assure_type_code, :limit => 1
      t.string :assure_date, :limit => 14
      t.string :developer_id, :limit => 20
      t.string :develop_date, :limit => 14
      t.string :develop_area_id, :limit => 20
      t.string :develop_area_id_cbss, :limit => 20
      t.string :develop_city_id, :limit => 20
      t.string :develop_city_id_cbss, :limit => 10
      t.string :channel_id, :limit => 10
      t.string :channel_type, :limit => 10
      t.string :changeuser_date, :limit => 14
      t.string :innet_method, :limit => 10
      t.string :active_type, :limit => 16
      t.string :main_discnt_code, :limit => 10
      t.string :is_innet, :limit => 1
      t.string :is_card, :limit => 2
      t.integer :innet_months
      t.integer :stop_month
      t.string :stop_type, :limit => 10
      t.string :is_stat, :limit => 2
      t.string :is_add, :limit => 2
      t.string :add_type, :limit => 3
      t.string :is_this_dev, :limit => 2
      t.string :is_lost, :limit => 2
      t.string :lost_type, :limit => 3
      t.string :is_this_break, :limit => 2
      t.string :is_change, :limit => 2
      t.string :is_group, :limit => 2

    end
    add_index :user_infos, :user_id
    add_index :user_infos, :cust_id
    add_index :user_infos, :usecust_id
  end
end
