class RenameConfederatiosIdToConfederationId < ActiveRecord::Migration[6.0]
  def change
    rename_column :stadia, :confederatios_id, :confederation_id
  end
end
