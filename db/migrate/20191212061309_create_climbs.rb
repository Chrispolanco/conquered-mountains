class CreateClimbs < ActiveRecord::Migration[6.0]
  def change
    create_table :climbs do |t|
      t.boolean :completed
      t.datetime :date_time_started
      t.datetime :date_time_finished
      t.time :duration
      t.integer :climber_id
      t.integer :mountain_id

      t.timestamps
    end
  end
end
