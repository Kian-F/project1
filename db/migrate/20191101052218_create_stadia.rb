class CreateStadia < ActiveRecord::Migration[6.0]
  def change
    create_table :stadia do |t|
      t.text :name
      t.date :built
      t.integer :club_id
      t.integer :confederatios_id
      t.text :country
      t.integer :total_capacity

      t.timestamps
    end
  end
end
