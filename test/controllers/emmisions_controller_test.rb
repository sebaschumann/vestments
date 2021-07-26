require "test_helper"

class EmmisionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emmision = emmisions(:one)
  end

  test "should get index" do
    get emmisions_url
    assert_response :success
  end

  test "should get new" do
    get new_emmision_url
    assert_response :success
  end

  test "should create emmision" do
    assert_difference('Emmision.count') do
      post emmisions_url, params: { emmision: { date: @emmision.date, number: @emmision.number } }
    end

    assert_redirected_to emmision_url(Emmision.last)
  end

  test "should show emmision" do
    get emmision_url(@emmision)
    assert_response :success
  end

  test "should get edit" do
    get edit_emmision_url(@emmision)
    assert_response :success
  end

  test "should update emmision" do
    patch emmision_url(@emmision), params: { emmision: { date: @emmision.date, number: @emmision.number } }
    assert_redirected_to emmision_url(@emmision)
  end

  test "should destroy emmision" do
    assert_difference('Emmision.count', -1) do
      delete emmision_url(@emmision)
    end

    assert_redirected_to emmisions_url
  end
end
