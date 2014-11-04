class AddIndexToCbActs < ActiveRecord::Migration
  def change
      add_index :cb_acts, :user_id
      add_index :cb_acts, :device_number
      add_index :cb_acts, :product_id
  end
end
