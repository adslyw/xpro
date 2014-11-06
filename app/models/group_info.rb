class GroupInfo < ActiveRecord::Base
  attr_accessible :act_info, :circuit_level, :city_code, :contact_address, :contact_duty, :contact_fax, :contact_identity_code, :contact_identity_kind, :contact_name, :contact_phone, :contact_zip, :corporation_identity_code, :corporation_identity_kind, :credit_level, :credit_value, :customer_id, :develop_dealer, :developer_phone, :group_address, :group_e_mail, :group_extern_id, :group_fax, :group_kind, :group_name, :group_phone, :group_size, :group_sys_id, :group_type, :group_zip, :grp_corporation, :grp_developer, :grp_kind, :grp_occupation, :if_data, :if_true, :if_valid, :income_level, :internet_address, :licence_code, :licence_type, :licence_validity, :main_competitor, :net_area, :province_code, :radio_info, :region_code, :remark
  establish_connection "remote_db"
  set_table_name "BB_GROUP_INFO_T"
  set_primary_key :group_sys_id
  belongs_to :group_user, :primary_key => "group_sys_id", :foreign_key => "group_sys_id"
  default_scope where(:if_valid => 1)
end
