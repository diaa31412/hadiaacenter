require 'test_helper'

class ImageheadersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imageheader = imageheaders(:one)
  end

  test "should get index" do
    get imageheaders_url
    assert_response :success
  end

  test "should get new" do
    get new_imageheader_url
    assert_response :success
  end

  test "should create imageheader" do
    assert_difference('Imageheader.count') do
      post imageheaders_url, params: { imageheader: { picture: @imageheader.picture } }
    end

    assert_redirected_to imageheader_url(Imageheader.last)
  end

  test "should show imageheader" do
    get imageheader_url(@imageheader)
    assert_response :success
  end

  test "should get edit" do
    get edit_imageheader_url(@imageheader)
    assert_response :success
  end

  test "should update imageheader" do
    patch imageheader_url(@imageheader), params: { imageheader: { picture: @imageheader.picture } }
    assert_redirected_to imageheader_url(@imageheader)
  end

  test "should destroy imageheader" do
    assert_difference('Imageheader.count', -1) do
      delete imageheader_url(@imageheader)
    end

    assert_redirected_to imageheaders_url
  end
end
