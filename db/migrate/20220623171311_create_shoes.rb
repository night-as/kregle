class CreateShoes < ActiveRecord::Migration[7.0]
  def change
    create_table :shoes do |t|
      t.boolean :is_avalable
      t.string :size

      t.timestamps
    end
  end
end
