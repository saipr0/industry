require "test_helper"

class GorillaGlassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gorilla_glass = gorilla_glasses(:one)
  end

  test "should get index" do
    get gorilla_glasses_url
    assert_response :success
  end

  test "should get new" do
    get new_gorilla_glass_url
    assert_response :success
  end

  test "should create gorilla_glass" do
    assert_difference("GorillaGlass.count") do
      post gorilla_glasses_url, params: { gorilla_glass: { dimensions: @gorilla_glass.dimensions, materialType: @gorilla_glass.materialType, partID: @gorilla_glass.partID, qualityRating: @gorilla_glass.qualityRating } }
    end

    assert_redirected_to gorilla_glass_url(GorillaGlass.last)
  end

  test "should show gorilla_glass" do
    get gorilla_glass_url(@gorilla_glass)
    assert_response :success
  end

  test "should get edit" do
    get edit_gorilla_glass_url(@gorilla_glass)
    assert_response :success
  end

  test "should update gorilla_glass" do
    patch gorilla_glass_url(@gorilla_glass), params: { gorilla_glass: { dimensions: @gorilla_glass.dimensions, materialType: @gorilla_glass.materialType, partID: @gorilla_glass.partID, qualityRating: @gorilla_glass.qualityRating } }
    assert_redirected_to gorilla_glass_url(@gorilla_glass)
  end

  test "should destroy gorilla_glass" do
    assert_difference("GorillaGlass.count", -1) do
      delete gorilla_glass_url(@gorilla_glass)
    end

    assert_redirected_to gorilla_glasses_url
  end
end
