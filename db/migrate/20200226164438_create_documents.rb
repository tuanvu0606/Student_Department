class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.text :header
      t.text :content
      t.references :user_id, foreign_key: true

      t.timestamps
    end
  end
end
