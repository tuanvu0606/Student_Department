class CreateInventoryModels < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_models do |t|
      t.string :model_name
      t.integer :quantity

      t.timestamps
    end
  end
end
