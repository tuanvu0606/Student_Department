class InventoryModel < ApplicationRecord
	has_many :inventory_items
  mount_uploader :image, ImageUploader  # carrierwave support for our image column
  serialize :image, JSON # If you use SQLite, add this line.  

  def add_inventory_item_to_model(inventory_item)    
    inventory_item.inventory_model.increment(:quantity)
  end

end
