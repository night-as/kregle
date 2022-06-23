class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :profile_id
      t.integer :quipment_id
      t.integer :track_id
      t.datetime :reservation_date
      t.integer :nb_of_people
      t.float :price

      t.timestamps
    end
  end
end
