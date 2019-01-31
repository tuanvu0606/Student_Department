class CreateOrderLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_line_items do |t|
      t.references :inventory_item, foreign_key: true
      t.references :order, foreign_key: true
      t.integer :order_item_qty
      t.float :total_price
      t.float :order_line_item_price

      t.timestamps
    end
  end
end
