require "test_helper"

class VestmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vestment = vestments(:one)
  end

  test "should get index" do
    get vestments_url
    assert_response :success
  end

  test "should get new" do
    get new_vestment_url
    assert_response :success
  end

  test "should create vestment" do
    assert_difference('Vestment.count') do
      post vestments_url, params: { vestment: { emmision_id: @vestment.emmision_id, garment_id: @vestment.garment_id, host_id: @vestment.host_id } }
    end

    assert_redirected_to vestment_url(Vestment.last)
  end

  test "should show vestment" do
    get vestment_url(@vestment)
    assert_response :success
  end

  test "should get edit" do
    get edit_vestment_url(@vestment)
    assert_response :success
  end

  test "should update vestment" do
    patch vestment_url(@vestment), params: { vestment: { emmision_id: @vestment.emmision_id, garment_id: @vestment.garment_id, host_id: @vestment.host_id } }
    assert_redirected_to vestment_url(@vestment)
  end

  test "should destroy vestment" do
    assert_difference('Vestment.count', -1) do
      delete vestment_url(@vestment)
    end

    assert_redirected_to vestments_url
  end
end
