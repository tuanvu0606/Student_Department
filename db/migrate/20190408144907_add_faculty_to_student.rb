class AddFacultyToStudent < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :faculty, foreign_key: true
  end
end
