class Sync < ActiveRecord::Base
  establish_connection "remote_db"
  attr_accessible :item_name, :item_value
  set_table_name "SYNC_BILL2BCV_T"
end
