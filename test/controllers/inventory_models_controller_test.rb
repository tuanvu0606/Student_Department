require 'test_helper'

class InventoryModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventory_model = inventory_models(:one)
  end

  test "should get index" do
    get inventory_models_url
    assert_response :success
  end

  test "should get new" do
    get new_inventory_model_url
    assert_response :success
  end

  test "should create inventory_model" do
    assert_difference('InventoryModel.count') do
      post inventory_models_url, params: { inventory_model: { model_name: @inventory_model.model_name, quantity: @inventory_model.quantity } }
    end

    assert_redirected_to inventory_model_url(InventoryModel.last)
  end

  test "should show inventory_model" do
    get inventory_model_url(@inventory_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_inventory_model_url(@inventory_model)
    assert_response :success
  end

  test "should update inventory_model" do
    patch inventory_model_url(@inventory_model), params: { inventory_model: { model_name: @inventory_model.model_name, quantity: @inventory_model.quantity } }
    assert_redirected_to inventory_model_url(@inventory_model)
  end

  test "should destroy inventory_model" do
    assert_difference('InventoryModel.count', -1) do
      delete inventory_model_url(@inventory_model)
    end

    assert_redirected_to inventory_models_url
  end
end
