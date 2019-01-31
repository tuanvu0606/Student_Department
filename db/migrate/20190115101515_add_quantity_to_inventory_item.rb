class AddQuantityToInventoryItem < ActiveRecord::Migration[5.2]
  def change
    add_column :inventory_items, :quantity, :integer
  end
end
