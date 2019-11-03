class CreateClubStadium < ActiveRecord::Migration[6.0]
  def change
    create_table :club_stadia, id: => false do |t|
      t.integer :club_id
      t.integer :stadium_id
    end
  end
end
