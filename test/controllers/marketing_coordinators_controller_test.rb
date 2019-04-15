require 'test_helper'

class MarketingCoordinatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marketing_coordinator = marketing_coordinators(:one)
  end

  test "should get index" do
    get marketing_coordinators_url
    assert_response :success
  end

  test "should get new" do
    get new_marketing_coordinator_url
    assert_response :success
  end

  test "should create marketing_coordinator" do
    assert_difference('MarketingCoordinator.count') do
      post marketing_coordinators_url, params: { marketing_coordinator: { age: @marketing_coordinator.age, faculty_id: @marketing_coordinator.faculty_id, name: @marketing_coordinator.name, user_id: @marketing_coordinator.user_id } }
    end

    assert_redirected_to marketing_coordinator_url(MarketingCoordinator.last)
  end

  test "should show marketing_coordinator" do
    get marketing_coordinator_url(@marketing_coordinator)
    assert_response :success
  end

  test "should get edit" do
    get edit_marketing_coordinator_url(@marketing_coordinator)
    assert_response :success
  end

  test "should update marketing_coordinator" do
    patch marketing_coordinator_url(@marketing_coordinator), params: { marketing_coordinator: { age: @marketing_coordinator.age, faculty_id: @marketing_coordinator.faculty_id, name: @marketing_coordinator.name, user_id: @marketing_coordinator.user_id } }
    assert_redirected_to marketing_coordinator_url(@marketing_coordinator)
  end

  test "should destroy marketing_coordinator" do
    assert_difference('MarketingCoordinator.count', -1) do
      delete marketing_coordinator_url(@marketing_coordinator)
    end

    assert_redirected_to marketing_coordinators_url
  end
end
