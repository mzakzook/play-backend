class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :table_id
      t.integer :num_players
      t.boolean :full

      t.timestamps
    end
  end
end
