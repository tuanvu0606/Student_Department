class AddImageToInventoryItemCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :inventory_item_categories, :image, :string
  end
end
