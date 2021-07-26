require "application_system_test_case"

class VestmentsTest < ApplicationSystemTestCase
  setup do
    @vestment = vestments(:one)
  end

  test "visiting the index" do
    visit vestments_url
    assert_selector "h1", text: "Vestments"
  end

  test "creating a Vestment" do
    visit vestments_url
    click_on "New Vestment"

    fill_in "Emmision", with: @vestment.emmision_id
    fill_in "Garment", with: @vestment.garment_id
    fill_in "Host", with: @vestment.host_id
    click_on "Create Vestment"

    assert_text "Vestment was successfully created"
    click_on "Back"
  end

  test "updating a Vestment" do
    visit vestments_url
    click_on "Edit", match: :first

    fill_in "Emmision", with: @vestment.emmision_id
    fill_in "Garment", with: @vestment.garment_id
    fill_in "Host", with: @vestment.host_id
    click_on "Update Vestment"

    assert_text "Vestment was successfully updated"
    click_on "Back"
  end

  test "destroying a Vestment" do
    visit vestments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vestment was successfully destroyed"
  end
end
