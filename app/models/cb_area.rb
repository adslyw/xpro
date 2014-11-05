class CbArea < ActiveRecord::Base
  attr_accessible :area_code, :area_level, :area_name, :end_date, :parent_area_code, :start_date, :user_area_code
end
