class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities, id:false do |t|
      t.string :f_area_id
      t.string :f_area_name
      t.string :city_name
    end
    add_index :cities, :f_area_id
  end
end
