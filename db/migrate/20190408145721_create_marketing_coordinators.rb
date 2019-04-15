class CreateMarketingCoordinators < ActiveRecord::Migration[5.2]
  def change
    create_table :marketing_coordinators do |t|
      t.string :name
      t.integer :age
      t.references :user, foreign_key: true
      t.references :faculty, foreign_key: true

      t.timestamps
    end
  end
end
