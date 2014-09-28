class ServiceKind < ActiveRecord::Base
  attr_accessible :service_kind, :service_name
  establish_connection "remote_db"
  set_table_name "BS_SERVICE_KIND_T"
  set_primary_key :service_kind
  ignore_table_columns :service_flag, :if_open, :month_fee_onoff,
                       :limit_control, :credit_control, :have_call_limit,
                       :pay_order
  has_many :service_relations,  :foreign_key => "service_kind"
  has_many :red_users, :foreign_key => "service_kind"
end
