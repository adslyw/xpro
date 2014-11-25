class PayWay < ActiveRecord::Base
  attr_accessible :kind, :name
  establish_connection "remote_db"
  self.table_name = "BS_PAY_WAY_T"
  self.primary_key = "kind"
  ignore_table_columns :change, :account_exist, :account_kind, :bus_fee_kind, :if_visual, :user_kind
end
