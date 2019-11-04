class AddNationalityToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :nationality, :text
  end
end
