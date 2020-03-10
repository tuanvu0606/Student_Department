class AddCheckedRuleToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :checked_rule, :boolean
  end
end
