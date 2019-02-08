class InventoryItem < BaseGrid
  scope do
    InventoryItem
  end

  filter(:id, :integer)
  filter(:created_at, :date, :range => true)

  column(:id)
  column(:serial_number)  
  date_column(:created_at)
end
