class RenameUserInfosToCbUsers < ActiveRecord::Migration
  def change
    rename_table :user_infos, :cb_users
  end
end
