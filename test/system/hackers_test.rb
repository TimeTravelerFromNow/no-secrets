require "application_system_test_case"

class HackersTest < ApplicationSystemTestCase
  setup do
    @hacker = hackers(:one)
  end

  test "visiting the index" do
    visit hackers_url
    assert_selector "h1", text: "Hackers"
  end

  test "should create hacker" do
    visit hackers_url
    click_on "New hacker"

    fill_in "Stealing blob", with: @hacker.stealing_blob
    click_on "Create Hacker"

    assert_text "Hacker was successfully created"
    click_on "Back"
  end

  test "should update Hacker" do
    visit hacker_url(@hacker)
    click_on "Edit this hacker", match: :first

    fill_in "Stealing blob", with: @hacker.stealing_blob
    click_on "Update Hacker"

    assert_text "Hacker was successfully updated"
    click_on "Back"
  end

  test "should destroy Hacker" do
    visit hacker_url(@hacker)
    click_on "Destroy this hacker", match: :first

    assert_text "Hacker was successfully destroyed"
  end
end
