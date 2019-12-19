class CreateMountains < ActiveRecord::Migration[6.0]
  def change
    create_table :mountains do |t|
      t.string :name
      t.string :route
      t.string :difficulty_rating 

      t.timestamps
    end
  end
end

