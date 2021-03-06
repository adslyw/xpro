class BundleRelation < ActiveRecord::Base
  attr_accessible :beg_date, :bundle_id, :bundle_kind, :city_code, :end_date, :f_free_fee, :if_baseno, :if_share, :if_valid, :if_wo_family, :join_accept_date, :join_complete_date, :primary_number, :quit_accept_date, :quit_complete_date, :service_kind, :user_id, :user_type
  establish_connection "remote_db"
  self.table_name = "BB_BUNDLE_RELATION_T"
  self.primary_key = "user_id"
  default_scope where(:if_valid => 1, :city_code => '847')
  belongs_to :service_relation,:primary_key => "user_id", :foreign_key => "user_id"
  has_one :bundle_type, :primary_key => "if_wo_family", :foreign_key => "if_wo_family"

  def type
    self.bundle_type.name
  end
end
