class OcsState < ActiveRecord::Base
  attr_accessible :service_state, :state_name
  self.primary_key = "service_state"
  has_many :ocs_relations,:foreign_key => "service_state", :primary_key => "service_state"
end
