class PayKind < ActiveRecord::Base
  attr_accessible :id, :kind, :name
  establish_connection "remote_db"
  set_table_name "BF_PAY_KIND_T"
  set_primary_key :id
end
