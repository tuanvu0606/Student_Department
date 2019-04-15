class AddFileToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :file, :string
  end
end
