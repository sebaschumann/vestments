require "test_helper"

class GarmentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @garment_type = garment_types(:one)
  end

  test "should get index" do
    get garment_types_url
    assert_response :success
  end

  test "should get new" do
    get new_garment_type_url
    assert_response :success
  end

  test "should create garment_type" do
    assert_difference('GarmentType.count') do
      post garment_types_url, params: { garment_type: { name: @garment_type.name } }
    end

    assert_redirected_to garment_type_url(GarmentType.last)
  end

  test "should show garment_type" do
    get garment_type_url(@garment_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_garment_type_url(@garment_type)
    assert_response :success
  end

  test "should update garment_type" do
    patch garment_type_url(@garment_type), params: { garment_type: { name: @garment_type.name } }
    assert_redirected_to garment_type_url(@garment_type)
  end

  test "should destroy garment_type" do
    assert_difference('GarmentType.count', -1) do
      delete garment_type_url(@garment_type)
    end

    assert_redirected_to garment_types_url
  end
end
