class CreateClimbers < ActiveRecord::Migration[6.0]
  def change
    create_table :climbers do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
