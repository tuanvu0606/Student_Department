class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :name
      t.text :descrition
      t.text :content
      t.date :final_date
      t.text :comment
      t.date :final_comment_date
      t.string :student_id
      t.string :image

      t.timestamps
    end
  end
end
