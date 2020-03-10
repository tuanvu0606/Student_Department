require "application_system_test_case"

class blogsTest < ApplicationSystemTestCase
  setup do
    @blog = blogs(:one)
  end

  test "visiting the index" do
    visit blogs_url
    assert_selector "h1", text: "blogs"
  end

  test "creating a blog" do
    visit blogs_url
    click_on "New blog"

    fill_in "Comment", with: @blog.comment
    fill_in "Content", with: @blog.content
    fill_in "Descrition", with: @blog.descrition
    fill_in "Final comment date", with: @blog.final_comment_date
    fill_in "Final date", with: @blog.final_date
    fill_in "Name", with: @blog.name
    click_on "Create blog"

    assert_text "blog was successfully created"
    click_on "Back"
  end

  test "updating a blog" do
    visit blogs_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @blog.comment
    fill_in "Content", with: @blog.content
    fill_in "Descrition", with: @blog.descrition
    fill_in "Final comment date", with: @blog.final_comment_date
    fill_in "Final date", with: @blog.final_date
    fill_in "Name", with: @blog.name
    click_on "Update blog"

    assert_text "blog was successfully updated"
    click_on "Back"
  end

  test "destroying a blog" do
    visit blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "blog was successfully destroyed"
  end
end
