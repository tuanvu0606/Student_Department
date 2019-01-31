json.extract! inventory_model, :id, :model_name, :quantity, :created_at, :updated_at
json.url inventory_model_url(inventory_model, format: :json)
