class Product < ActiveRecord::Base
  acts_as_xlsx
  attr_accessible :f_if_3g, :f_prod_id, :f_prod_name, :f_prod_type, :f_service_kind
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      headers = column_names
      csv << headers
      all.each do |product|
        csv << product.attributes.values_at(*headers)
      end
    end
  end
end
