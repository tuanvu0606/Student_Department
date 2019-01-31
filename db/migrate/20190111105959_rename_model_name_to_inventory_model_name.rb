class RenameModelNameToInventoryModelName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :inventory_models, :model_name, :inventory_model_name
  end
end
