json.extract! order_line_item, :id, :inventory_item_id, :order_id, :order_item_qty, :total_price, :order_line_item_price, :created_at, :updated_at
json.url order_line_item_url(order_line_item, format: :json)
