class AddConfederationIdToClubs < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :confederation_id, :integer
  end
end
