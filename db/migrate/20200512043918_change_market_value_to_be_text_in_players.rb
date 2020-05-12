class ChangeMarketValueToBeTextInPlayers < ActiveRecord::Migration[6.0]
  def change
    change_column :players, :market_value, :text
  end
end
