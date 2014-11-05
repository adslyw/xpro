class CreateCbAreas < ActiveRecord::Migration
  def change
    create_table :cb_areas, id:false do |t|
      t.string :area_code, :limit => 8
      t.string :area_name, :limit => 100
      t.string :user_area_code, :limit => 10
      t.string :parent_area_code, :limit => 8
      t.string :start_date, :limit => 14
      t.string :end_date, :limit => 14
      t.string :area_level, :limit => 2
    end
  end
end
