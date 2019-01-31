class AddFixedItemPriceToOrderLineItem < ActiveRecord::Migration[5.2]
  def change
    add_column :order_line_items, :fixed_item_price, :float
  end
end
