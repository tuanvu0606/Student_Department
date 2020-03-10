class AddRoleToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :student, :boolean
    add_column :users, :tutor, :boolean
    add_column :users, :authorized_staff, :boolean
  end
end
