json.extract! inventory_item, :id, :inv_item_category_id, :model_id, :name, :price, :description, :warehoused_on, :created_at, :updated_at
json.url inventory_item_url(inventory_item, format: :json)
