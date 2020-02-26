require "application_system_test_case"

class AuthorizedstaffsTest < ApplicationSystemTestCase
  setup do
    @authorizedstaff = authorizedstaffs(:one)
  end

  test "visiting the index" do
    visit authorizedstaffs_url
    assert_selector "h1", text: "Authorizedstaffs"
  end

  test "creating a Authorizedstaff" do
    visit authorizedstaffs_url
    click_on "New Authorizedstaff"

    fill_in "Name", with: @authorizedstaff.name
    fill_in "User", with: @authorizedstaff.user_id
    click_on "Create Authorizedstaff"

    assert_text "Authorizedstaff was successfully created"
    click_on "Back"
  end

  test "updating a Authorizedstaff" do
    visit authorizedstaffs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @authorizedstaff.name
    fill_in "User", with: @authorizedstaff.user_id
    click_on "Update Authorizedstaff"

    assert_text "Authorizedstaff was successfully updated"
    click_on "Back"
  end

  test "destroying a Authorizedstaff" do
    visit authorizedstaffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Authorizedstaff was successfully destroyed"
  end
end
