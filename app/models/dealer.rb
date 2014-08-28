class Dealer < ActiveRecord::Base
  attr_accessible :dealer_id, :dealer_name, :struct_id
  establish_connection "remote_db"
  set_table_name "BD_DEALER_T"
  set_primary_key :dealer_id
  ignore_table_columns :city_code,
                       :region_code,
                       :dealer_parent,
                       :dealer_level,
                       :whole_name,
                       :channel_type,
                       :dealer_type,
                       :dealer_grade,
                       :dealer_kind,
                       :default_sale_kind,
                       :belongs_part,
                       :valid_status,
                       :area_code,
                       :caution_money,
                       :identity,
                       :identity_code,
                       :tax_code,
                       :address,
                       :zip,
                       :contact_person,
                       :contact_phone,
                       :create_date,
                       :audit_date,
                       :status_change_date,
                       :change_date,
                       :remark
end
