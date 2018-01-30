require 'test_helper'

class JordansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jordan = jordans(:one)
  end

  test "should get index" do
    get jordans_url
    assert_response :success
  end

  test "should get new" do
    get new_jordan_url
    assert_response :success
  end

  test "should create jordan" do
    assert_difference('Jordan.count') do
      post jordans_url, params: { jordan: { description: @jordan.description, name: @jordan.name, picture: @jordan.picture } }
    end

    assert_redirected_to jordan_url(Jordan.last)
  end

  test "should show jordan" do
    get jordan_url(@jordan)
    assert_response :success
  end

  test "should get edit" do
    get edit_jordan_url(@jordan)
    assert_response :success
  end

  test "should update jordan" do
    patch jordan_url(@jordan), params: { jordan: { description: @jordan.description, name: @jordan.name, picture: @jordan.picture } }
    assert_redirected_to jordan_url(@jordan)
  end

  test "should destroy jordan" do
    assert_difference('Jordan.count', -1) do
      delete jordan_url(@jordan)
    end

    assert_redirected_to jordans_url
  end
end
