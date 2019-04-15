require "application_system_test_case"

class MarketingCoordinatorsTest < ApplicationSystemTestCase
  setup do
    @marketing_coordinator = marketing_coordinators(:one)
  end

  test "visiting the index" do
    visit marketing_coordinators_url
    assert_selector "h1", text: "Marketing Coordinators"
  end

  test "creating a Marketing coordinator" do
    visit marketing_coordinators_url
    click_on "New Marketing Coordinator"

    fill_in "Age", with: @marketing_coordinator.age
    fill_in "Faculty", with: @marketing_coordinator.faculty_id
    fill_in "Name", with: @marketing_coordinator.name
    fill_in "User", with: @marketing_coordinator.user_id
    click_on "Create Marketing coordinator"

    assert_text "Marketing coordinator was successfully created"
    click_on "Back"
  end

  test "updating a Marketing coordinator" do
    visit marketing_coordinators_url
    click_on "Edit", match: :first

    fill_in "Age", with: @marketing_coordinator.age
    fill_in "Faculty", with: @marketing_coordinator.faculty_id
    fill_in "Name", with: @marketing_coordinator.name
    fill_in "User", with: @marketing_coordinator.user_id
    click_on "Update Marketing coordinator"

    assert_text "Marketing coordinator was successfully updated"
    click_on "Back"
  end

  test "destroying a Marketing coordinator" do
    visit marketing_coordinators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marketing coordinator was successfully destroyed"
  end
end
