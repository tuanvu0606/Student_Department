class AddIndexToSpecificItem < ActiveRecord::Migration[5.2]
  def change
    add_index :specific_items, :serial_number, unique: true
  end
end
