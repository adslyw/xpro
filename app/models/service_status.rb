class ServiceStatus < ActiveRecord::Base
  attr_accessible :kind, :name
  establish_connection "remote_db"
  set_table_name "BB_SERVING_STATUS_T"
  set_primary_key :kind
  ignore_table_columns :if_open, :note

end
