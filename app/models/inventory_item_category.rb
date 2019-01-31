class InventoryItemCategory < ApplicationRecord
	has_many :inventory_items
	mount_uploader :image, ImageUploader  # carrierwave support for our image column
  	serialize :image, JSON # If you use SQLite, add this line.  
end
