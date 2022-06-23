class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.integer :index
      t.boolean :is_working
      t.boolean :is_for_kids

      t.timestamps
    end
  end
end
