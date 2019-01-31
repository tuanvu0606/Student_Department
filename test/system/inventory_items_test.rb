require "application_system_test_case"

class InventoryItemsTest < ApplicationSystemTestCase
  setup do
    @inventory_item = inventory_items(:one)
  end

  test "visiting the index" do
    visit inventory_items_url
    assert_selector "h1", text: "Inventory Items"
  end

  test "creating a Inventory item" do
    visit inventory_items_url
    click_on "New Inventory Item"

    fill_in "Description", with: @inventory_item.description
    fill_in "Inv item category", with: @inventory_item.inv_item_category_id
    fill_in "Model", with: @inventory_item.model_id
    fill_in "Name", with: @inventory_item.name
    fill_in "Price", with: @inventory_item.price
    fill_in "Warehoused on", with: @inventory_item.warehoused_on
    click_on "Create Inventory item"

    assert_text "Inventory item was successfully created"
    click_on "Back"
  end

  test "updating a Inventory item" do
    visit inventory_items_url
    click_on "Edit", match: :first

    fill_in "Description", with: @inventory_item.description
    fill_in "Inv item category", with: @inventory_item.inv_item_category_id
    fill_in "Model", with: @inventory_item.model_id
    fill_in "Name", with: @inventory_item.name
    fill_in "Price", with: @inventory_item.price
    fill_in "Warehoused on", with: @inventory_item.warehoused_on
    click_on "Update Inventory item"

    assert_text "Inventory item was successfully updated"
    click_on "Back"
  end

  test "destroying a Inventory item" do
    visit inventory_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inventory item was successfully destroyed"
  end
end
