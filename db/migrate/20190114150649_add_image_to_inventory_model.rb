class AddImageToInventoryModel < ActiveRecord::Migration[5.2]
  def change
    add_column :inventory_models, :image, :string
  end
end
