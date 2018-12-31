require "application_system_test_case"

class DairiesTest < ApplicationSystemTestCase
  setup do
    @dairy = dairies(:one)
  end

  test "visiting the index" do
    visit dairies_url
    assert_selector "h1", text: "Dairies"
  end

  test "creating a Dairy" do
    visit dairies_url
    click_on "New Dairy"

    fill_in "Body", with: @dairy.body
    fill_in "Title", with: @dairy.title
    click_on "Create Dairy"

    assert_text "Dairy was successfully created"
    click_on "Back"
  end

  test "updating a Dairy" do
    visit dairies_url
    click_on "Edit", match: :first

    fill_in "Body", with: @dairy.body
    fill_in "Title", with: @dairy.title
    click_on "Update Dairy"

    assert_text "Dairy was successfully updated"
    click_on "Back"
  end

  test "destroying a Dairy" do
    visit dairies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dairy was successfully destroyed"
  end
end
