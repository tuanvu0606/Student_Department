class RemoveInvItemCategoryIdFromInventoryItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :inventory_items, :inv_item_category_id, :integer
  end
end
