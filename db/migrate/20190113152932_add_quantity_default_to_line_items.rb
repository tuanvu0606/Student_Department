class AddQuantityDefaultToLineItems < ActiveRecord::Migration[5.2]
  def change
    change_column :order_line_items, :order_item_qty, :integer, :default => 1
  end
end
