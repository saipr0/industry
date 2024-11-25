require "application_system_test_case"

class OemManufacturersTest < ApplicationSystemTestCase
  setup do
    @oem_manufacturer = oem_manufacturers(:one)
  end

  test "visiting the index" do
    visit oem_manufacturers_url
    assert_selector "h1", text: "Oem manufacturers"
  end

  test "should create oem manufacturer" do
    visit oem_manufacturers_url
    click_on "New oem manufacturer"

    fill_in "Contactdetails", with: @oem_manufacturer.contactDetails
    fill_in "Location", with: @oem_manufacturer.location
    fill_in "Manufacturerid", with: @oem_manufacturer.manufacturerID
    fill_in "Name", with: @oem_manufacturer.name
    click_on "Create Oem manufacturer"

    assert_text "Oem manufacturer was successfully created"
    click_on "Back"
  end

  test "should update Oem manufacturer" do
    visit oem_manufacturer_url(@oem_manufacturer)
    click_on "Edit this oem manufacturer", match: :first

    fill_in "Contactdetails", with: @oem_manufacturer.contactDetails
    fill_in "Location", with: @oem_manufacturer.location
    fill_in "Manufacturerid", with: @oem_manufacturer.manufacturerID
    fill_in "Name", with: @oem_manufacturer.name
    click_on "Update Oem manufacturer"

    assert_text "Oem manufacturer was successfully updated"
    click_on "Back"
  end

  test "should destroy Oem manufacturer" do
    visit oem_manufacturer_url(@oem_manufacturer)
    click_on "Destroy this oem manufacturer", match: :first

    assert_text "Oem manufacturer was successfully destroyed"
  end
end
