class CreateBundleTypes < ActiveRecord::Migration
  def change
    create_table :bundle_types, id:false do |t|
      t.integer :if_wo_family
      t.string :name

      t.timestamps
    end
  end
end
