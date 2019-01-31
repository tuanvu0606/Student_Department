class AddImageToInventoryItem < ActiveRecord::Migration[5.2]
  def change
    add_column :inventory_items, :image, :string
  end
end
