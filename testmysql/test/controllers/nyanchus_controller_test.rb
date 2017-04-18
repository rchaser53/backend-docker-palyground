require 'test_helper'

class NyanchusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nyanchu = nyanchus(:one)
  end

  test "should get index" do
    get nyanchus_url
    assert_response :success
  end

  test "should get new" do
    get new_nyanchu_url
    assert_response :success
  end

  test "should create nyanchu" do
    assert_difference('Nyanchu.count') do
      post nyanchus_url, params: { nyanchu: {  } }
    end

    assert_redirected_to nyanchu_url(Nyanchu.last)
  end

  test "should show nyanchu" do
    get nyanchu_url(@nyanchu)
    assert_response :success
  end

  test "should get edit" do
    get edit_nyanchu_url(@nyanchu)
    assert_response :success
  end

  test "should update nyanchu" do
    patch nyanchu_url(@nyanchu), params: { nyanchu: {  } }
    assert_redirected_to nyanchu_url(@nyanchu)
  end

  test "should destroy nyanchu" do
    assert_difference('Nyanchu.count', -1) do
      delete nyanchu_url(@nyanchu)
    end

    assert_redirected_to nyanchus_url
  end
end
