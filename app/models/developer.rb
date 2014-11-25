class Developer < ActiveRecord::Base
  attr_accessible :dev_code, :dev_name
  establish_connection "remote_db_crm"
  self.table_name = "uni_dealer_developer_t"
  set_primary_key = "dev_code"
  ignore_table_columns :dev_operate,
                       :dev_type_id,
                       :dev_staff_code,
                       :user_pid,
                       :linkman_phone,
                       :linkman_email,
                       :linkman_addr,
                       :linkman_postcode,
                       :remark,
                       :bss_sys_code,
                       :bss_sys_code2,
                       :f_employee_id,
                       :group_acct
  has_many :service_relations, :foreign_key => "developer"
end
