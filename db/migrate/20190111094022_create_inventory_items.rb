class CreateInventoryItems < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_items do |t|
      t.integer :inv_item_category_id
      t.integer :model_id
      t.string :name
      t.float :price
      t.text :description
      t.date :warehoused_on

      t.timestamps
    end
  end
end
