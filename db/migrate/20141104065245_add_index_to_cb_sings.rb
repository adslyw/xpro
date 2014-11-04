class AddIndexToCbSings < ActiveRecord::Migration
  def change
      add_index :cb_sings, :user_id
      add_index :cb_sings, :cust_id
      add_index :cb_sings, :acct_id
  end
end
