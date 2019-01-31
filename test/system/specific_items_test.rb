require "application_system_test_case"

class SpecificItemsTest < ApplicationSystemTestCase
  setup do
    @specific_item = specific_items(:one)
  end

  test "visiting the index" do
    visit specific_items_url
    assert_selector "h1", text: "Specific Items"
  end

  test "creating a Specific item" do
    visit specific_items_url
    click_on "New Specific Item"

    fill_in "Inventory item", with: @specific_item.inventory_item_id
    fill_in "Serial number", with: @specific_item.serial_number
    click_on "Create Specific item"

    assert_text "Specific item was successfully created"
    click_on "Back"
  end

  test "updating a Specific item" do
    visit specific_items_url
    click_on "Edit", match: :first

    fill_in "Inventory item", with: @specific_item.inventory_item_id
    fill_in "Serial number", with: @specific_item.serial_number
    click_on "Update Specific item"

    assert_text "Specific item was successfully updated"
    click_on "Back"
  end

  test "destroying a Specific item" do
    visit specific_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Specific item was successfully destroyed"
  end
end
