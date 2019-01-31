class AddInventoryModelRefToInventoryItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :inventory_items, :inventory_model, foreign_key: true
  end
end
