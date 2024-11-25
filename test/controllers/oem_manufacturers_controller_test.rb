require "test_helper"

class OemManufacturersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oem_manufacturer = oem_manufacturers(:one)
  end

  test "should get index" do
    get oem_manufacturers_url
    assert_response :success
  end

  test "should get new" do
    get new_oem_manufacturer_url
    assert_response :success
  end

  test "should create oem_manufacturer" do
    assert_difference("OemManufacturer.count") do
      post oem_manufacturers_url, params: { oem_manufacturer: { contactDetails: @oem_manufacturer.contactDetails, location: @oem_manufacturer.location, manufacturerID: @oem_manufacturer.manufacturerID, name: @oem_manufacturer.name } }
    end

    assert_redirected_to oem_manufacturer_url(OemManufacturer.last)
  end

  test "should show oem_manufacturer" do
    get oem_manufacturer_url(@oem_manufacturer)
    assert_response :success
  end

  test "should get edit" do
    get edit_oem_manufacturer_url(@oem_manufacturer)
    assert_response :success
  end

  test "should update oem_manufacturer" do
    patch oem_manufacturer_url(@oem_manufacturer), params: { oem_manufacturer: { contactDetails: @oem_manufacturer.contactDetails, location: @oem_manufacturer.location, manufacturerID: @oem_manufacturer.manufacturerID, name: @oem_manufacturer.name } }
    assert_redirected_to oem_manufacturer_url(@oem_manufacturer)
  end

  test "should destroy oem_manufacturer" do
    assert_difference("OemManufacturer.count", -1) do
      delete oem_manufacturer_url(@oem_manufacturer)
    end

    assert_redirected_to oem_manufacturers_url
  end
end
