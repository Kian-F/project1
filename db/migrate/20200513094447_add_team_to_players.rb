class AddTeamToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :team, :text
  end
end
