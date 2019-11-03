class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.text :name
      t.text :league
      t.text :country
      t.integer :stadium_id
      t.integer :player_id
      t.text :manager

      t.timestamps
    end
  end
end
