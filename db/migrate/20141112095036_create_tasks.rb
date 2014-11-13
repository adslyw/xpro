class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.references :input
      t.references :output
      t.integer :state

      t.timestamps
    end
    add_index :tasks, :input_id
    add_index :tasks, :output_id
  end
end
