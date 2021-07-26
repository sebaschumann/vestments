require "application_system_test_case"

class EmmisionsTest < ApplicationSystemTestCase
  setup do
    @emmision = emmisions(:one)
  end

  test "visiting the index" do
    visit emmisions_url
    assert_selector "h1", text: "Emmisions"
  end

  test "creating a Emmision" do
    visit emmisions_url
    click_on "New Emmision"

    fill_in "Date", with: @emmision.date
    fill_in "Number", with: @emmision.number
    click_on "Create Emmision"

    assert_text "Emmision was successfully created"
    click_on "Back"
  end

  test "updating a Emmision" do
    visit emmisions_url
    click_on "Edit", match: :first

    fill_in "Date", with: @emmision.date
    fill_in "Number", with: @emmision.number
    click_on "Update Emmision"

    assert_text "Emmision was successfully updated"
    click_on "Back"
  end

  test "destroying a Emmision" do
    visit emmisions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Emmision was successfully destroyed"
  end
end
