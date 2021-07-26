require "application_system_test_case"

class GarmentTypesTest < ApplicationSystemTestCase
  setup do
    @garment_type = garment_types(:one)
  end

  test "visiting the index" do
    visit garment_types_url
    assert_selector "h1", text: "Garment Types"
  end

  test "creating a Garment type" do
    visit garment_types_url
    click_on "New Garment Type"

    fill_in "Name", with: @garment_type.name
    click_on "Create Garment type"

    assert_text "Garment type was successfully created"
    click_on "Back"
  end

  test "updating a Garment type" do
    visit garment_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @garment_type.name
    click_on "Update Garment type"

    assert_text "Garment type was successfully updated"
    click_on "Back"
  end

  test "destroying a Garment type" do
    visit garment_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Garment type was successfully destroyed"
  end
end
