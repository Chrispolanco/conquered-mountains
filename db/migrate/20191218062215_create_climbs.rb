class CreateClimbs < ActiveRecord::Migration[6.0]
  def change
    create_table :climbs do |t|
      t.string :name 
      t.time :duration 
      t.datetime :date_started 
      t.datetime :date_completed
      t.integer :climber_id
      t.integer :mountain_id

      t.timestamps
    end
  end
end
