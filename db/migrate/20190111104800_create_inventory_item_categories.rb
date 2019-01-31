class CreateInventoryItemCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_item_categories do |t|
      t.string :category_name

      t.timestamps
    end
  end
end
