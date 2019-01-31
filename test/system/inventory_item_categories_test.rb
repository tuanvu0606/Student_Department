require "application_system_test_case"

class InventoryItemCategoriesTest < ApplicationSystemTestCase
  setup do
    @inventory_item_category = inventory_item_categories(:one)
  end

  test "visiting the index" do
    visit inventory_item_categories_url
    assert_selector "h1", text: "Inventory Item Categories"
  end

  test "creating a Inventory item category" do
    visit inventory_item_categories_url
    click_on "New Inventory Item Category"

    fill_in "Category name", with: @inventory_item_category.category_name
    click_on "Create Inventory item category"

    assert_text "Inventory item category was successfully created"
    click_on "Back"
  end

  test "updating a Inventory item category" do
    visit inventory_item_categories_url
    click_on "Edit", match: :first

    fill_in "Category name", with: @inventory_item_category.category_name
    click_on "Update Inventory item category"

    assert_text "Inventory item category was successfully updated"
    click_on "Back"
  end

  test "destroying a Inventory item category" do
    visit inventory_item_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inventory item category was successfully destroyed"
  end
end
