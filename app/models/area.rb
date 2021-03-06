class Area < ActiveRecord::Base
  attr_accessible :f_area_id, :f_area_name, :f_city_code
  establish_connection "remote_db"
  self.table_name = "OM_AREA_T"
  self.primary_key = "f_area_id"
  ignore_table_columns :f_parent_area_id, :f_area_level,
                       :f_postal_code, :f_area_code,
                       :f_active_date, :f_inactive_date
  has_many :service_relations, :foreign_key => "belong_code"
  has_one :city, :foreign_key => 'f_area_id', :primary_key => 'f_area_id'

  def city_name
    begin
      self.city.city_name
    rescue
      ""
    end
  end
end
