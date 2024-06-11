require "application_system_test_case"

class SavedSecretsTest < ApplicationSystemTestCase
  setup do
    @saved_secret = saved_secrets(:one)
  end

  test "visiting the index" do
    visit saved_secrets_url
    assert_selector "h1", text: "Saved secrets"
  end

  test "should create saved secret" do
    visit saved_secrets_url
    click_on "New saved secret"

    fill_in "Saved skb", with: @saved_secret.saved_skb
    fill_in "Title", with: @saved_secret.title
    click_on "Create Saved secret"

    assert_text "Saved secret was successfully created"
    click_on "Back"
  end

  test "should update Saved secret" do
    visit saved_secret_url(@saved_secret)
    click_on "Edit this saved secret", match: :first

    fill_in "Saved skb", with: @saved_secret.saved_skb
    fill_in "Title", with: @saved_secret.title
    click_on "Update Saved secret"

    assert_text "Saved secret was successfully updated"
    click_on "Back"
  end

  test "should destroy Saved secret" do
    visit saved_secret_url(@saved_secret)
    click_on "Destroy this saved secret", match: :first

    assert_text "Saved secret was successfully destroyed"
  end
end
