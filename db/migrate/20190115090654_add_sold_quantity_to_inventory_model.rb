class AddSoldQuantityToInventoryModel < ActiveRecord::Migration[5.2]
  def change
    add_column :inventory_models, :sold_quantity, :integer
  end
end
