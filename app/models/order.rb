class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :order_line_items, dependent: :destroy
  accepts_nested_attributes_for :order_line_items

  def add_inventory_item(inventory_item)
    current_item = order_line_items.find_by(inventory_item_id: inventory_item.id)

    if current_item
      current_item.increment(:order_item_qty)
    else
      current_item = order_line_items.build(inventory_item_id: inventory_item.id)
     # binding.pry
    end
    current_item
  end

  def total_price
    order_line_items.to_a.sum { |item| item.total_price }
  end


end
