require 'test_helper'

class NyansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nyan = nyans(:one)
  end

  test "should get index" do
    get nyans_url
    assert_response :success
  end

  test "should get new" do
    get new_nyan_url
    assert_response :success
  end

  test "should create nyan" do
    assert_difference('Nyan.count') do
      post nyans_url, params: { nyan: {  } }
    end

    assert_redirected_to nyan_url(Nyan.last)
  end

  test "should show nyan" do
    get nyan_url(@nyan)
    assert_response :success
  end

  test "should get edit" do
    get edit_nyan_url(@nyan)
    assert_response :success
  end

  test "should update nyan" do
    patch nyan_url(@nyan), params: { nyan: {  } }
    assert_redirected_to nyan_url(@nyan)
  end

  test "should destroy nyan" do
    assert_difference('Nyan.count', -1) do
      delete nyan_url(@nyan)
    end

    assert_redirected_to nyans_url
  end
end
