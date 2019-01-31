class AddImageToSpecificItem < ActiveRecord::Migration[5.2]
  def change
    add_column :specific_items, :image, :string
  end
end
