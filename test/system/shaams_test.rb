require "application_system_test_case"

class ShaamsTest < ApplicationSystemTestCase
  setup do
    @shaam = shaams(:one)
  end

  test "visiting the index" do
    visit shaams_url
    assert_selector "h1", text: "Shaams"
  end

  test "should create shaam" do
    visit shaams_url
    click_on "New shaam"

    fill_in "Title", with: @shaam.title
    click_on "Create Shaam"

    assert_text "Shaam was successfully created"
    click_on "Back"
  end

  test "should update Shaam" do
    visit shaam_url(@shaam)
    click_on "Edit this shaam", match: :first

    fill_in "Title", with: @shaam.title
    click_on "Update Shaam"

    assert_text "Shaam was successfully updated"
    click_on "Back"
  end

  test "should destroy Shaam" do
    visit shaam_url(@shaam)
    click_on "Destroy this shaam", match: :first

    assert_text "Shaam was successfully destroyed"
  end
end
