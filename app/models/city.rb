class City < ActiveRecord::Base
  attr_accessible :city_name, :f_area_id, :f_area_name
  set_primary_key :f_area_id
  belongs_to :area, :foreign_key => 'f_area_id', :primary_key => 'f_area_id'
end
