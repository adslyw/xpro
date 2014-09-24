class GsmFee < ActiveRecord::Base
  attr_accessible :city_code, :account_id, :bundle_id, :call_times, :customer_id, :discharge, :fee1, :fee11, :fee12, :fee13, :fee14, :fee2, :fee3, :fee4, :fee_date, :fee_kind, :pay_unit, :real_unit, :service_kind, :toll_unit, :user_id
  establish_connection "remote_db"
  set_table_name "BF_GATHER_FEE_T"
  set_primary_key :user_id
  ignore_table_columns :region_code,
                       :special_bill
  has_many :service_relations, :foreign_key => 'user_id'
end
