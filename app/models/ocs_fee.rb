class OcsFee < ActiveRecord::Base
  attr_accessible :account_id, :bundle_id, :call_times, :customer_id, :discharge, :fee1, :fee11, :fee12, :fee13, :fee14, :fee2, :fee3, :fee4, :fee_date, :fee_kind, :pay_unit, :real_unit, :service_kind, :toll_unit, :user_id
  establish_connection "remote_db"
  self.table_name = "BF_PPS_GATHER_FEE_T"
  self.primary_key = "user_id"
  ignore_table_columns :region_code,
                       :special_bill
  default_scope where(:fee_date => Time.now.strftime("%Y%m"))
  scope :month, where(:fee_date => 1.month.ago.strftime("%Y%m"))
  def fee
   (self.fee1 + self.fee2 + self.fee3 + self.fee4 + self.fee11 + self.fee12 + self.fee13 + self.fee14).to_f
  end
  def fee_name
   FeeKind.where(:service_kind => self.service_kind,:fee_id => self.fee_kind).first.fee_name
  end
end
