class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :tables do |t|
      t.string :table_type

      t.timestamps
    end
  end
end
