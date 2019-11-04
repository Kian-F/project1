class AddImageToStadium < ActiveRecord::Migration[6.0]
  def change
    add_column :stadia, :image, :text
  end
end
