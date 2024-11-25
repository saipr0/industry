require "application_system_test_case"

class RetailersTest < ApplicationSystemTestCase
  setup do
    @retailer = retailers(:one)
  end

  test "visiting the index" do
    visit retailers_url
    assert_selector "h1", text: "Retailers"
  end

  test "should create retailer" do
    visit retailers_url
    click_on "New retailer"

    fill_in "Contactdetails", with: @retailer.contactDetails
    fill_in "Location", with: @retailer.location
    fill_in "Name", with: @retailer.name
    fill_in "Retailerid", with: @retailer.retailerID
    click_on "Create Retailer"

    assert_text "Retailer was successfully created"
    click_on "Back"
  end

  test "should update Retailer" do
    visit retailer_url(@retailer)
    click_on "Edit this retailer", match: :first

    fill_in "Contactdetails", with: @retailer.contactDetails
    fill_in "Location", with: @retailer.location
    fill_in "Name", with: @retailer.name
    fill_in "Retailerid", with: @retailer.retailerID
    click_on "Update Retailer"

    assert_text "Retailer was successfully updated"
    click_on "Back"
  end

  test "should destroy Retailer" do
    visit retailer_url(@retailer)
    click_on "Destroy this retailer", match: :first

    assert_text "Retailer was successfully destroyed"
  end
end
