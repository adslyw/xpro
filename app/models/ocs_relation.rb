class OcsRelation < ActiveRecord::Base
  attr_accessible :first_act_date, :service_id, :service_state
  establish_connection "remote_db"
  set_table_name "OCS_SERVICE_RELATION_T"
  set_primary_key :service_id
  ignore_table_columns :session_id,
                       :valid_date,
                       :sync_date,
                       :active_date,
                       :deal_status,
                       :last_act_date,
                       :if_frozen
  has_many :service_relations, :foreign_key => 'service_id', :primary_key => "service_id"
  belongs_to :ocs_states,class_name: 'OcsState',:foreign_key => "service_state", :primary_key => "service_state"
  def status
    service_state
  end
  def state_name
    self.ocs_states.state_name
  end
end
