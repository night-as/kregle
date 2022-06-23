class CreateBowlingBalls < ActiveRecord::Migration[7.0]
  def change
    create_table :bowling_balls do |t|
      t.boolean :is_avalable
      t.integer :size

      t.timestamps
    end
  end
end
