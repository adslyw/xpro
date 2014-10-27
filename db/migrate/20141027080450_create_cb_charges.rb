class CreateCbCharges < ActiveRecord::Migration
  def change
    create_table :cb_charges, id:false do |t|
      t.string :area_id, :limit => 20
      t.string :area_id_cbss, :limit => 20
      t.string :city_id, :limit => 20
      t.string :city_id_cbss, :limit => 20
      t.string :user_id, :limit => 40
      t.string :cust_id, :limit => 40
      t.string :acct_id, :limit => 20
      t.string :device_number, :limit => 60
      t.string :service_type, :limit => 20
      t.string :owe_bill_flag, :limit => 4
      t.string :is_group_item, :limit => 1
      t.string :charge_code, :limit => 10
      t.string :charge_code_sum, :limit => 10
      t.decimal :acct_fee, precision: 15, scale: 2
      t.decimal :b_discnt, precision: 15, scale: 2
      t.decimal :a_discnt, precision: 15, scale: 2
      t.decimal :adjust_before, precision: 15, scale: 2
      t.decimal :adjust_after, precision: 15, scale: 2
    end
    add_index :cb_charges, :user_id
    add_index :cb_charges, :cust_id
    add_index :cb_charges, :acct_id
  end
end
