class ServiceStatus < ActiveRecord::Base
  attr_accessible :kind, :name
  establish_connection "remote_db"
  self.table_name = "BB_SERVING_STATUS_T"
  self.primary_key = "kind"
  ignore_table_columns :if_open, :note

  has_many :service_relations, :foreign_key => "serving_status"
end
