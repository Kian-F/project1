class AddSportsdbIdToClubs < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :sportdb_id, :integer
  end
end
