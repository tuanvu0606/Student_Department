require 'test_helper'

class SpecificItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @specific_item = specific_items(:one)
  end

  test "should get index" do
    get specific_items_url
    assert_response :success
  end

  test "should get new" do
    get new_specific_item_url
    assert_response :success
  end

  test "should create specific_item" do
    assert_difference('SpecificItem.count') do
      post specific_items_url, params: { specific_item: { inventory_item_id: @specific_item.inventory_item_id, serial_number: @specific_item.serial_number } }
    end

    assert_redirected_to specific_item_url(SpecificItem.last)
  end

  test "should show specific_item" do
    get specific_item_url(@specific_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_specific_item_url(@specific_item)
    assert_response :success
  end

  test "should update specific_item" do
    patch specific_item_url(@specific_item), params: { specific_item: { inventory_item_id: @specific_item.inventory_item_id, serial_number: @specific_item.serial_number } }
    assert_redirected_to specific_item_url(@specific_item)
  end

  test "should destroy specific_item" do
    assert_difference('SpecificItem.count', -1) do
      delete specific_item_url(@specific_item)
    end

    assert_redirected_to specific_items_url
  end
end
