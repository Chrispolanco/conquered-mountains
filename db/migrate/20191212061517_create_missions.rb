class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.string :program_name
      t.boolean :manned_space_exploration 
      t.string :description 
      t.boolean :status 
      t.string :launch_sites 
      t.string :duration 
      t.datetime :maiden_flight 
      t.datetime :last_flight 

      t.timestamps
    end
  end
end

