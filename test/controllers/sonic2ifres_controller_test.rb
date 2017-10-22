require 'test_helper'

class Sonic2ifresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sonic2ifre = sonic2ifres(:one)
  end

  test "should get index" do
    get sonic2ifres_url
    assert_response :success
  end

  test "should get new" do
    get new_sonic2ifre_url
    assert_response :success
  end

  test "should create sonic2ifre" do
    assert_difference('Sonic2ifre.count') do
      post sonic2ifres_url, params: { sonic2ifre: { sonic2fire@gmail.com: @sonic2ifre.sonic2fire@gmail.com } }
    end

    assert_redirected_to sonic2ifre_url(Sonic2ifre.last)
  end

  test "should show sonic2ifre" do
    get sonic2ifre_url(@sonic2ifre)
    assert_response :success
  end

  test "should get edit" do
    get edit_sonic2ifre_url(@sonic2ifre)
    assert_response :success
  end

  test "should update sonic2ifre" do
    patch sonic2ifre_url(@sonic2ifre), params: { sonic2ifre: { sonic2fire@gmail.com: @sonic2ifre.sonic2fire@gmail.com } }
    assert_redirected_to sonic2ifre_url(@sonic2ifre)
  end

  test "should destroy sonic2ifre" do
    assert_difference('Sonic2ifre.count', -1) do
      delete sonic2ifre_url(@sonic2ifre)
    end

    assert_redirected_to sonic2ifres_url
  end
end
