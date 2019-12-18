class CreateAstronauts < ActiveRecord::Migration[6.0]
  def change
    create_table :astronauts do |t|
      t.string :name
      t.integer :age
      t.boolean :active

      t.timestamps
    end
  end
end
