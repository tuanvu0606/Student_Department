class CreateFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties do |t|
      t.string :name
      t.date :closure_date
      t.date :final_closure_date

      t.timestamps
    end
  end
end
