class CbOwe < ActiveRecord::Base
  attr_accessible :acct_id, :acct_month, :area_id, :area_id_cbss, :city_id, :city_id_cbss, :fee_date, :owe_fee, :recover_fee, :service_type, :user_id
end
