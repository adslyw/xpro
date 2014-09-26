class RedUser < ActiveRecord::Base
  attr_accessible :city_code, :in_flag, :input_time, :service_id, :service_kind
  establish_connection "remote_db"
  set_table_name "BF_RED_USER_T"
  set_primary_key :service_id
end
