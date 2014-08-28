class Area < ActiveRecord::Base
  attr_accessible :f_area_id, :f_area_name, :f_city_code
  establish_connection "remote_db"
  set_table_name "OM_AREA_T"
  set_primary_key :f_area_id
  ignore_table_columns :f_parent_area_id, :f_area_level,
                       :f_postal_code, :f_area_code,
                       :f_active_date, :f_inactive_date
end
