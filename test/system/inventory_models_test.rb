require "application_system_test_case"

class InventoryModelsTest < ApplicationSystemTestCase
  setup do
    @inventory_model = inventory_models(:one)
  end

  test "visiting the index" do
    visit inventory_models_url
    assert_selector "h1", text: "Inventory Models"
  end

  test "creating a Inventory model" do
    visit inventory_models_url
    click_on "New Inventory Model"

    fill_in "Model name", with: @inventory_model.model_name
    fill_in "Quantity", with: @inventory_model.quantity
    click_on "Create Inventory model"

    assert_text "Inventory model was successfully created"
    click_on "Back"
  end

  test "updating a Inventory model" do
    visit inventory_models_url
    click_on "Edit", match: :first

    fill_in "Model name", with: @inventory_model.model_name
    fill_in "Quantity", with: @inventory_model.quantity
    click_on "Update Inventory model"

    assert_text "Inventory model was successfully updated"
    click_on "Back"
  end

  test "destroying a Inventory model" do
    visit inventory_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inventory model was successfully destroyed"
  end
end
