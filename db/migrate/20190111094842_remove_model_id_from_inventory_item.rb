class RemoveModelIdFromInventoryItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :inventory_items, :model_id, :integer
  end
end
