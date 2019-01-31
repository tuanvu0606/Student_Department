class CreateSpecificItems < ActiveRecord::Migration[5.2]
  def change
    create_table :specific_items do |t|
      t.references :inventory_item, foreign_key: true
      t.integer :inventory_item_id
      t.string :serial_number

      t.timestamps
    end
  end
end
