class AddInventoryItemCategoryRefToInventoryItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :inventory_items, :inventory_item_category, foreign_key: true
  end
end
