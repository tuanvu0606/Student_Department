class RemoveImageToSpecificItem < ActiveRecord::Migration[5.2]
  def change
  	remove_column :specific_items, :image
  end
end
