class CreateOutputs < ActiveRecord::Migration
  def change
    create_table :outputs do |t|
      t.references :asset
      t.string :description

      t.timestamps
    end
    add_index :outputs, :asset_id
  end
end
