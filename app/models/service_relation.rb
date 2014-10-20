class ServiceRelation < ActiveRecord::Base
  attr_accessible :account_id,
                  :apply_start_date,
                  :belong_code,
                  :bundle_kind,
                  :bundle_id,
                  :complete_date,
                  :customer_id,
                  :dealer_return_date,
                  :developer,
                  :developer_dealer,
                  :if_valid,
                  :nundle_id,
                  :pay_type,
                  :service_favour_id,
                  :service_id,
                  :service_invalid_date,
                  :service_kind,
                  :service_stop_date,
                  :serving_status,
                  :status_change_date,
                  :user_id,
                  :user_level,
                  :city_code,
                  :hcust_flag,
                  :if_togather
  establish_connection "remote_db"
  set_table_name "BB_SERVICE_RELATION_T"
  set_primary_key :service_id
  ignore_table_columns :preserve01,
                       :preserve02,
                       :preserve03,
                       :preserve04,
                       :preserve05,
                       :preserve06,
                       :preserve07,
                       :preserve08,
                       :preserve09,
                       :preserve10,
                       :preserve11,
                       :preserve12,
                       :preserve13,
                       :preserve14,
                       :preserve15,
                       :preserve16,
                       :preserve17,
                       :preserve18,
                       :preserve19,
                       :preserve20,
                       :belong_dealer,
                       :region_code,
                       :acc_rela_flag,
                       :modify_date,
                       :data_create_way,
                       :beg_reg,
                       :end_reg,
                       :maint_channel,
                       :server_channel,
                       :month_fee,
                       :month_fee_date,
                       :user_type,
                       :contract_time,
                       :place,
                       :description,
                       :subscriber_id,
                       :innet_method,
                       :bus_favour_id,
                       :password,
                       :credit_control,
                       :credit_solution,
                       :if_self_control,
                       :source_id,
                       :accept_way,
                       :accept_address_id,
                       :accept_person,
                       :accept_date,
                       :service_start_date,
                       :reactive_date,
                       :dealer_input_date,
                       :service_group_id,
                       :present_fee,
                       :inherit_id,
                       :brand_id,
                       :note,
                       :access_level,
                       :card_number,
                       :innet_accept_way,
                       :special_rela,
                       :call_flag,
                       :first_call_date,
                       :dealer_innet_method
  belongs_to :service_kind,  :foreign_key => "service_kind"
  belongs_to :service_status, :foreign_key => "serving_status"
  belongs_to :prod, :foreign_key => "service_favour_id"
  belongs_to :dealer, :foreign_key => "developer_dealer"
  belongs_to :developer, :foreign_key => "developer"
  belongs_to :area, :foreign_key => "belong_code"
  belongs_to :ocs_relation, :foreign_key => 'service_id'
  belongs_to :customer, :foreign_key => "customer_id"
  belongs_to :gsm_fee, :foreign_key => "user_id"
  belongs_to :red_user, :foreign_key => "service_id"
  default_scope where(:if_valid => 1)
  scope :innet, where(:if_valid => 1)
  scope :offnet, where(:if_valid => 0)

  def type
    if pay_type == 2
      'OCS'
    else
      'GSM'
    end
  end
  def service_name
    self.service_kind.service_name
  end
  def developer_name
    begin
      self.developer.dev_name
    rescue
      ""
    end
  end
  def dealer_name
    begin
      self.dealer.dealer_name
    rescue
      ""
    end
  end
  def area_name
    begin
      self.area.f_area_name
    rescue
      ""
    end
  end
  def prod_name
    self.prod.f_prod_name
  end
  def first_name
    self.customer.first_name
  end
  def if_3g
    case self.prod.f_if_3g
      when 1 then '3G'
      when 0 then '2G'
    end
  end
  def status_name
    if pay_type != 2
      self.service_status.name
    else
      self.ocs_relation.state_name
    end
  end
  def birthday
    if self.service_kind.service_kind == 9
      if type != 2
        apply_start_date
      else
        self.ocs_relation.first_act_date
      end
    else
      complete_date
    end
  end
  def info
    {
      service_id: self.service_id,
      service_type: self.type,
      service_name: self.service_name,
      first_name: self.first_name,
      area_name: self.area_name,
      dealer_name: self.dealer_name,
      developer_name: self.developer_name,
      f_if_3g: self.if_3g,
      prod_name: self.prod_name,
      birthday: self.birthday
    }
  end
end
