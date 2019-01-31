class AddFieldnameToTablename < ActiveRecord::Migration[5.2]
  def change
    change_column :specific_items, :serial_number, :string, null: false, unique: true
    #add_column :tablenames, :, :serial_number
  end
end
