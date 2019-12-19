class CreateClimbs < ActiveRecord::Migration[6.0]
  def change
    create_table :climbs do |t|
      t.time :duration 
      t.string :duration 
      t.datetime :date_started 
      t.datetime :date_completed
      t.integer :climber_id
      t.interger :mountain_id

      t.timestamps
    end
  end
end
