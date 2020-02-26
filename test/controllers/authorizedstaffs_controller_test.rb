require 'test_helper'

class AuthorizedstaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authorizedstaff = authorizedstaffs(:one)
  end

  test "should get index" do
    get authorizedstaffs_url
    assert_response :success
  end

  test "should get new" do
    get new_authorizedstaff_url
    assert_response :success
  end

  test "should create authorizedstaff" do
    assert_difference('Authorizedstaff.count') do
      post authorizedstaffs_url, params: { authorizedstaff: { name: @authorizedstaff.name, user_id: @authorizedstaff.user_id } }
    end

    assert_redirected_to authorizedstaff_url(Authorizedstaff.last)
  end

  test "should show authorizedstaff" do
    get authorizedstaff_url(@authorizedstaff)
    assert_response :success
  end

  test "should get edit" do
    get edit_authorizedstaff_url(@authorizedstaff)
    assert_response :success
  end

  test "should update authorizedstaff" do
    patch authorizedstaff_url(@authorizedstaff), params: { authorizedstaff: { name: @authorizedstaff.name, user_id: @authorizedstaff.user_id } }
    assert_redirected_to authorizedstaff_url(@authorizedstaff)
  end

  test "should destroy authorizedstaff" do
    assert_difference('Authorizedstaff.count', -1) do
      delete authorizedstaff_url(@authorizedstaff)
    end

    assert_redirected_to authorizedstaffs_url
  end
end
