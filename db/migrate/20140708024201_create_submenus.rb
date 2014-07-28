class CreateSubmenus < ActiveRecord::Migration
  def change
    create_table :submenus do |t|
      t.string :title
      t.string :icon
      t.string :url
      t.references :menu

      t.timestamps
    end
    add_index :submenus, :menu_id
  end
end
