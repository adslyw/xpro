class CreateInputs < ActiveRecord::Migration
  def change
    create_table :inputs do |t|
      t.references :asset
      t.string :description

      t.timestamps
    end
    add_index :inputs, :asset_id
  end
end
