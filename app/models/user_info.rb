class UserInfo < ActiveRecord::Base
  attr_accessible :active_type,
                  :add_type,
                  :area_id,
                  :area_id_cbss,
                  :assure_cust_id,
                  :assure_date,
                  :assure_type_code,
                  :basic_credit_value,
                  :brand_id,
                  :brand_id_cbss,
                  :changeuser_date,
                  :channel_id,
                  :channel_type,
                  :city_id,
                  :city_id_cbss,
                  :close_date,
                  :create_date,
                  :credit_class,
                  :credit_value,
                  :cust_id,
                  :cust_type,
                  :develop_area_id,
                  :develop_area_id_cbss,
                  :develop_city_id,
                  :develop_city_id_cbss,
                  :develop_date,
                  :developer_id,
                  :device_integer,
                  :first_call_time,
                  :in_depart_id,
                  :innet_date,
                  :innet_method,
                  :innet_months,
                  :is_acct,
                  :is_add,
                  :is_card,
                  :is_change,
                  :is_group,
                  :is_innet,
                  :is_lost,
                  :is_stat,
                  :is_this_break,
                  :is_this_dev,
                  :last_stop_date,
                  :lost_type,
                  :main_discnt_code,
                  :net_type_cbss,
                  :open_depart_id,
                  :open_mode,
                  :oper_date,
                  :pay_mode,
                  :pay_mode_cbss,
                  :pre_destroy_time,
                  :product_class,
                  :product_id,
                  :remove_area_id,
                  :remove_area_id_cbss,
                  :remove_city_id,
                  :remove_city_id_cbss,
                  :remove_depart_id,
                  :remove_reason_code,
                  :remove_tag,
                  :score_value,
                  :service_type,
                  :stop_month,
                  :stop_type,
                  :update_time,
                  :usecust_id,
                  :user_diff_code,
                  :user_id,
                  :user_status,
                  :user_status_cbss,
                  :user_type,
                  :user_type_cbss
end