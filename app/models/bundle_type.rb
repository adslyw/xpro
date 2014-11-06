class BundleType < ActiveRecord::Base
  attr_accessible :if_wo_family, :name
  set_primary_key :if_wo_family
  belongs_to :bundle_relation, :primary_key => "if_wo_family", :foreign_key => "if_wo_family"
end
