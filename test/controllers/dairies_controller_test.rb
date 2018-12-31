require 'test_helper'

class DairiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dairy = dairies(:one)
  end

  test "should get index" do
    get dairies_url
    assert_response :success
  end

  test "should get new" do
    get new_dairy_url
    assert_response :success
  end

  test "should create dairy" do
    assert_difference('Dairy.count') do
      post dairies_url, params: { dairy: { body: @dairy.body, title: @dairy.title } }
    end

    assert_redirected_to dairy_url(Dairy.last)
  end

  test "should show dairy" do
    get dairy_url(@dairy)
    assert_response :success
  end

  test "should get edit" do
    get edit_dairy_url(@dairy)
    assert_response :success
  end

  test "should update dairy" do
    patch dairy_url(@dairy), params: { dairy: { body: @dairy.body, title: @dairy.title } }
    assert_redirected_to dairy_url(@dairy)
  end

  test "should destroy dairy" do
    assert_difference('Dairy.count', -1) do
      delete dairy_url(@dairy)
    end

    assert_redirected_to dairies_url
  end
end
