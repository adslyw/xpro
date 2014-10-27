class AddColumnToCbCharges < ActiveRecord::Migration
  def change
    add_column :cb_charges, :fee_date, :string, :limit => 6
  end
end
