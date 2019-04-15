class AddSuperCoordinatorToMarketingCoordinator < ActiveRecord::Migration[5.2]
  def change
    add_column :marketing_coordinators, :manager, :boolean
  end
end
