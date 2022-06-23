class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :login
      t.boolean :is_admin
      t.boolean :is_worker
      t.boolean :is_client

      t.timestamps
    end
  end
end
