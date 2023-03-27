require "application_system_test_case"

class HeropowersTest < ApplicationSystemTestCase
  setup do
    @heropower = heropowers(:one)
  end

  test "visiting the index" do
    visit heropowers_url
    assert_selector "h1", text: "Heropowers"
  end

  test "should create heropower" do
    visit heropowers_url
    click_on "New heropower"

    fill_in "Hero", with: @heropower.hero_id
    fill_in "Power", with: @heropower.power_id
    fill_in "Strength", with: @heropower.strength
    click_on "Create Heropower"

    assert_text "Heropower was successfully created"
    click_on "Back"
  end

  test "should update Heropower" do
    visit heropower_url(@heropower)
    click_on "Edit this heropower", match: :first

    fill_in "Hero", with: @heropower.hero_id
    fill_in "Power", with: @heropower.power_id
    fill_in "Strength", with: @heropower.strength
    click_on "Update Heropower"

    assert_text "Heropower was successfully updated"
    click_on "Back"
  end

  test "should destroy Heropower" do
    visit heropower_url(@heropower)
    click_on "Destroy this heropower", match: :first

    assert_text "Heropower was successfully destroyed"
  end
end
