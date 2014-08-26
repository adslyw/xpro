class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :f_prod_id
      t.string :f_prod_name
      t.integer :f_if_3g
      t.integer :f_prod_type
      t.integer :f_service_kind

      t.timestamps
    end
    add_index :products, :f_prod_id
    add_index :products, :f_prod_name
  end
end
