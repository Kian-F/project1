class RenameClubStadiaToClubsStadia < ActiveRecord::Migration[6.0]
  def change
    rename_table :club_stadia, :clubs_stadia
  end
end
