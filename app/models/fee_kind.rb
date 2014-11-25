class FeeKind < ActiveRecord::Base
  attr_accessible :bill_kind, :fee_id, :fee_name, :gather_kind, :call_type, :service_kind
  establish_connection "remote_db"
  self.table_name = "BF_FEE_KIND_T"
  self.primary_key = "fee_id"
  ignore_table_columns :use_status,
                       :roam_type,
                       :toll_type,
                       :net_type,
                       :other_flag,
                       :bill_order
end
