class AddCheckedRuleToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :checked_rule, :boolean
  end
end
