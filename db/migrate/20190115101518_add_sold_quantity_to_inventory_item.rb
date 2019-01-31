class AddSoldQuantityToInventoryItem < ActiveRecord::Migration[5.2]
  def change
    add_column :inventory_items, :sold_quantity, :integer
  end
end
