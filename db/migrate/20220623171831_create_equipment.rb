class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.integer :reservation_id
      t.integer :shoe_id
      t.integer :bowling_ball_id

      t.timestamps
    end
  end
end
