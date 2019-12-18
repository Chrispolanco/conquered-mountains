class CreateHumanSpaceFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :human_space_flights do |t|
      t.string :launch_sites 
      t.string :duration 
      t.datetime :maiden_flight 
      t.datetime :last_flight 
      t.string :description 
      t.integer :mission_id
      t.interger :astronaut_id

      t.timestamps
    end
  end
end
