class ChangeUserTable < ActiveRecord::Migration[5.2]
  def change  
    rename_column :users, :student, :is_student
    rename_column :users, :tutor, :is_tutor
    rename_column :users, :authorized_staff, :is_authorized_staff
  end
end
