class CreateCbProducts < ActiveRecord::Migration
  def change
    create_table :cb_products, id:false do |t|
      t.string :product_id, :limit => 10
      t.string :product_name, :limit => 200
      t.string :product_mode, :limit => 20
    end
    add_index :cb_products, :product_id
  end
end
