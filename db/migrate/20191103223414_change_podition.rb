class ChangePodition < ActiveRecord::Migration[6.0]
  def change
    rename_column :players, :podition, :position
  end
end
