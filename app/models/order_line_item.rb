class OrderLineItem < ApplicationRecord
  belongs_to :inventory_item, required: false
  belongs_to :order, required: false
  before_save :save_total_price 
  	

  #accepts_nested_attributes_for :order
  #validates :order_item_qty, presence: true, numericality: { only_integer: true, greater_than: 0 }
  def total_fixed_price
    fixed_item_price.to_i * order_item_qty.to_i
  end
private
  def updated_total_price
    inventory_item.price.to_i * order_item_qty.to_i
  end 

  def save_total_price
    self.total_price = inventory_item.price.to_f * order_item_qty.to_f
  end

end
