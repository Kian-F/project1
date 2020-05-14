class AddTeamLogoToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :teamLogo, :string
    add_column :players, :, :text
  end
end
