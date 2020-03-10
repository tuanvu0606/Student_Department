class AddTutorToStudent < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :tutor, foreign_key: true
  end
end
