require "test_helper"

class HeropowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @heropower = heropowers(:one)
  end

  test "should get index" do
    get heropowers_url
    assert_response :success
  end

  test "should get new" do
    get new_heropower_url
    assert_response :success
  end

  test "should create heropower" do
    assert_difference("Heropower.count") do
      post heropowers_url, params: { heropower: { hero_id: @heropower.hero_id, power_id: @heropower.power_id, strength: @heropower.strength } }
    end

    assert_redirected_to heropower_url(Heropower.last)
  end

  test "should show heropower" do
    get heropower_url(@heropower)
    assert_response :success
  end

  test "should get edit" do
    get edit_heropower_url(@heropower)
    assert_response :success
  end

  test "should update heropower" do
    patch heropower_url(@heropower), params: { heropower: { hero_id: @heropower.hero_id, power_id: @heropower.power_id, strength: @heropower.strength } }
    assert_redirected_to heropower_url(@heropower)
  end

  test "should destroy heropower" do
    assert_difference("Heropower.count", -1) do
      delete heropower_url(@heropower)
    end

    assert_redirected_to heropowers_url
  end
end
