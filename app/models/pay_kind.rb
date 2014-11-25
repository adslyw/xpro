class PayKind < ActiveRecord::Base
  attr_accessible :id, :kind, :name
  establish_connection "remote_db"
  self.table_name = "BF_PAY_KIND_T"
  self.primary_key = "id"
end
