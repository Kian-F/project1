class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.text :name
      t.date :dob
      t.integer :market_value
      t.text :podition
      t.integer :goals
      t.integer :club_id

      t.timestamps
    end
  end
end
