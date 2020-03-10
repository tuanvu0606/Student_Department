class AddFileToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :file, :string
  end
end
