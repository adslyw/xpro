class AddIndexToCbOwes < ActiveRecord::Migration
  def change
      add_index :cb_owes, :user_id
      add_index :cb_owes, :acct_id
  end
end
