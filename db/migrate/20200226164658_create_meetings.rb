class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.datetime :time
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
