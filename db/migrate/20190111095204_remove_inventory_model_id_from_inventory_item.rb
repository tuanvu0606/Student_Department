class RemoveInventoryModelIdFromInventoryItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :inventory_items, :inventory_model_id, :integer
  end
end
