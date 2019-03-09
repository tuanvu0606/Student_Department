class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :descrition
      t.text :content
      t.date :final_date
      t.text :comment
      t.date :final_comment_date
      t.string :student_id

      t.timestamps
    end
  end
end
