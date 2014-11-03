class CreateCbActs < ActiveRecord::Migration
  def change
    create_table :cb_acts, id:false do |t|
      t.string :area_id, :limit => 20
      t.string :area_id_cbss, :limit => 20
      t.string :city_id, :limit => 20
      t.string :city_id_cbss, :limit => 20
      t.string :activity_subs_id, :limit => 20
      t.string :service_type, :limit => 20
      t.string :user_id, :limit => 40
      t.string :device_number, :limit => 60
      t.string :pay_mode, :limit => 10
      t.string :user_type, :limit => 30
      t.string :channel_id, :limit => 30
      t.string :cust_type, :limit => 2
      t.string :product_id, :limit => 20
      t.string :product_class, :limit => 30
      t.string :activity_type_cbss, :limit => 50
      t.string :activity_id, :limit => 50
      t.string :activity_type, :limit => 50
      t.string :protocal_month, :limit => 10
      t.string :mon_limit_charge, :limit => 20
      t.string :res_type, :limit => 50
      t.string :res_belong_type, :limit => 2
      t.string :res_imei, :limit => 20
      t.string :res_brand, :limit => 50
      t.string :res_brand_cbss, :limit => 50
      t.string :res_mode, :limit => 50
      t.string :res_mode_cbss, :limit => 50
      t.decimal :res_num, :precision => 15, :scale => 2
      t.string :res_cost, :limit => 256
      t.decimal :res_price, :precision => 15, :scale => 2
      t.decimal :allowance_fee, :precision => 15, :scale => 2
      t.decimal :deposit_fee, :precision => 15, :scale => 2
      t.decimal :pre_fee, :precision => 15, :scale => 2
      t.decimal :present_fee, :precision => 15, :scale => 2
      t.decimal :mon_return_rate, :precision => 15, :scale => 2
      t.string :accept_time, :limit => 14
      t.string :start_date, :limit => 14
      t.string :end_date, :limit => 14
      t.string :deposit_type, :limit => 32
      t.string :is_valid, :limit => 2
      t.string :is_this_expire, :limit => 2
      t.string :is_this_innet, :limit => 2
      t.string :is_this_add, :limit => 2
      t.string :is_this_dev, :limit => 2
      t.string :is_this_break, :limit => 2
      t.string :is_this_lost, :limit => 2
      t.string :is_card, :limit => 2
      t.string :channel_type, :limit => 10
      t.string :fee_date, :limit => 6
    end
  end
end
