class AddIndexToUserInfos < ActiveRecord::Migration
  def change
    add_index :user_infos, :device_integer
  end
end
