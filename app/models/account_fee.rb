class AccountFee < ActiveRecord::Base
  attr_accessible :account_fee_id, :account_fee_kind, :account_fee_name, :account_id, :city_code, :credit_fee, :fee_flag, :flag_note, :invalid_date, :left_fee, :left_handle, :pay_rate, :pay_rate_base, :pre_num1, :recent_pay, :recent_reduce, :region_code, :start_date, :trans_id, :trans_ym, :unit_fee, :use_date, :write_off
  establish_connection "remote_db"
  self.table_name = "BF_ACCOUNT_FEE_T"
  self.primary_key = "account_id"
end
