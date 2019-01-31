require 'test_helper'

class CookiesTestControllerTest < ActionDispatch::IntegrationTest
  test "should get set_cookies" do
    get cookies_test_set_cookies_url
    assert_response :success
  end

  test "should get show_cookies" do
    get cookies_test_show_cookies_url
    assert_response :success
  end

  test "should get delete_cookies" do
    get cookies_test_delete_cookies_url
    assert_response :success
  end

end
