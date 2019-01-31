class AddCookiesToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :cookies, :string
  end
end
