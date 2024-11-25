require "application_system_test_case"

class GorillaGlassesTest < ApplicationSystemTestCase
  setup do
    @gorilla_glass = gorilla_glasses(:one)
  end

  test "visiting the index" do
    visit gorilla_glasses_url
    assert_selector "h1", text: "Gorilla glasses"
  end

  test "should create gorilla glass" do
    visit gorilla_glasses_url
    click_on "New gorilla glass"

    fill_in "Dimensions", with: @gorilla_glass.dimensions
    fill_in "Materialtype", with: @gorilla_glass.materialType
    fill_in "Partid", with: @gorilla_glass.partID
    fill_in "Qualityrating", with: @gorilla_glass.qualityRating
    click_on "Create Gorilla glass"

    assert_text "Gorilla glass was successfully created"
    click_on "Back"
  end

  test "should update Gorilla glass" do
    visit gorilla_glass_url(@gorilla_glass)
    click_on "Edit this gorilla glass", match: :first

    fill_in "Dimensions", with: @gorilla_glass.dimensions
    fill_in "Materialtype", with: @gorilla_glass.materialType
    fill_in "Partid", with: @gorilla_glass.partID
    fill_in "Qualityrating", with: @gorilla_glass.qualityRating
    click_on "Update Gorilla glass"

    assert_text "Gorilla glass was successfully updated"
    click_on "Back"
  end

  test "should destroy Gorilla glass" do
    visit gorilla_glass_url(@gorilla_glass)
    click_on "Destroy this gorilla glass", match: :first

    assert_text "Gorilla glass was successfully destroyed"
  end
end
