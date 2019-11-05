class AddConfederationIdToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :confederation_id, :integer
  end
end
