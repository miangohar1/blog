require "test_helper"

class ShaamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shaam = shaams(:one)
  end

  test "should get index" do
    get shaams_url
    assert_response :success
  end

  test "should get new" do
    get new_shaam_url
    assert_response :success
  end

  test "should create shaam" do
    assert_difference("Shaam.count") do
      post shaams_url, params: { shaam: { title: @shaam.title } }
    end

    assert_redirected_to shaam_url(Shaam.last)
  end

  test "should show shaam" do
    get shaam_url(@shaam)
    assert_response :success
  end

  test "should get edit" do
    get edit_shaam_url(@shaam)
    assert_response :success
  end

  test "should update shaam" do
    patch shaam_url(@shaam), params: { shaam: { title: @shaam.title } }
    assert_redirected_to shaam_url(@shaam)
  end

  test "should destroy shaam" do
    assert_difference("Shaam.count", -1) do
      delete shaam_url(@shaam)
    end

    assert_redirected_to shaams_url
  end
end
