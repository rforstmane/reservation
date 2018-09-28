require 'test_helper'

class BicyclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicycle = bicycles(:one)
  end

  test "should get index" do
    get bicycles_url
    assert_response :success
  end

  test "should get new" do
    get new_bicycle_url
    assert_response :success
  end

  test "should create bicycle" do
    assert_difference('Bicycle.count') do
      post bicycles_url, params: { bicycle: { bicycle_type: @bicycle.bicycle_type } }
    end

    assert_redirected_to bicycle_url(Bicycle.last)
  end

  test "should show bicycle" do
    get bicycle_url(@bicycle)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicycle_url(@bicycle)
    assert_response :success
  end

  test "should update bicycle" do
    patch bicycle_url(@bicycle), params: { bicycle: { bicycle_type: @bicycle.bicycle_type } }
    assert_redirected_to bicycle_url(@bicycle)
  end

  test "should destroy bicycle" do
    assert_difference('Bicycle.count', -1) do
      delete bicycle_url(@bicycle)
    end

    assert_redirected_to bicycles_url
  end
end
