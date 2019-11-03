class CreateConfederations < ActiveRecord::Migration[6.0]
  def change
    create_table :confederations do |t|
      t.text :name
      t.text :image
      t.text :competition
      t.integer :player_id
      t.integer :stadium_id
      t.text :country
      t.text :league
      t.integer :total_value
      t.integer :club_id

      t.timestamps
    end
  end
end
