class CreateCbOwes < ActiveRecord::Migration
  def change
    create_table :cb_owes, id:false do |t|
      t.string :area_id, :limit => 20
      t.string :area_id_cbss, :limit => 20
      t.string :city_id, :limit => 20
      t.string :city_id_cbss, :limit => 20
      t.string :user_id, :limit => 40
      t.string :acct_id, :limit => 20
      t.string :service_type, :limit => 20
      t.string :acct_month, :limit => 10
      t.decimal :owe_fee, :precision => 15, :scale => 2
      t.decimal :recover_fee, :precision => 15, :scale => 2
      t.string :fee_date, :limit => 6
    end
  end
end
