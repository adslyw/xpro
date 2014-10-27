class AddColumnToUserInfos < ActiveRecord::Migration
  def change
    add_column :user_infos, :fee_date, :string, :limit => 6
  end
end
