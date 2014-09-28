class RedUser < ActiveRecord::Base
  attr_accessible :city_code, :in_flag, :input_time, :service_id, :service_kind
  establish_connection "remote_db"
  set_table_name "BF_RED_USER_T"
  set_primary_key :service_id
  belongs_to :service_kind, :foreign_key => "service_kind"
  has_many :service_relations, :foreign_key => "service_id"
  def service_name
    self.service_kind.service_name
  end
end
