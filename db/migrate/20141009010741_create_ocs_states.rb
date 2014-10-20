class CreateOcsStates < ActiveRecord::Migration
  def change
    create_table :ocs_states, id: false do |t|
      t.string :service_state
      t.string :state_name

      t.timestamps
    end
  end
end
