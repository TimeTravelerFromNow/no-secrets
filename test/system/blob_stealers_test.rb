require "application_system_test_case"

class BlobStealersTest < ApplicationSystemTestCase
  setup do
    @blob_stealer = blob_stealers(:one)
  end

  test "visiting the index" do
    visit blob_stealers_url
    assert_selector "h1", text: "Blob stealers"
  end

  test "should create blob stealer" do
    visit blob_stealers_url
    click_on "New blob stealer"

    fill_in "Stolen", with: @blob_stealer.stolen_id
    fill_in "Stolen purpose", with: @blob_stealer.stolen_purpose
    fill_in "Stolen signed", with: @blob_stealer.stolen_signed_id
    fill_in "Title", with: @blob_stealer.title
    click_on "Create Blob stealer"

    assert_text "Blob stealer was successfully created"
    click_on "Back"
  end

  test "should update Blob stealer" do
    visit blob_stealer_url(@blob_stealer)
    click_on "Edit this blob stealer", match: :first

    fill_in "Stolen", with: @blob_stealer.stolen_id
    fill_in "Stolen purpose", with: @blob_stealer.stolen_purpose
    fill_in "Stolen signed", with: @blob_stealer.stolen_signed_id
    fill_in "Title", with: @blob_stealer.title
    click_on "Update Blob stealer"

    assert_text "Blob stealer was successfully updated"
    click_on "Back"
  end

  test "should destroy Blob stealer" do
    visit blob_stealer_url(@blob_stealer)
    click_on "Destroy this blob stealer", match: :first

    assert_text "Blob stealer was successfully destroyed"
  end
end
