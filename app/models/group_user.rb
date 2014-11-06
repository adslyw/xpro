class GroupUser < ActiveRecord::Base
  attr_accessible :app_type, :city_code, :developer, :developer_dealer, :group_sys_id, :home_code, :if_main, :if_valid, :join_date, :member_group_rela, :operation_role, :quit_date, :service_id, :service_kind, :sub_app_type, :user_id
  establish_connection "remote_db"
  set_table_name "BB_GROUP_USER_INFO_T"
  set_primary_key :user_id
  default_scope where(:if_valid => 1)
end
