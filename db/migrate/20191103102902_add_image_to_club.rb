class AddImageToClub < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :image, :text
  end
end
