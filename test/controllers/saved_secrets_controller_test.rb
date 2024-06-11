require "test_helper"

class SavedSecretsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saved_secret = saved_secrets(:one)
  end

  test "should get index" do
    get saved_secrets_url
    assert_response :success
  end

  test "should get new" do
    get new_saved_secret_url
    assert_response :success
  end

  test "should create saved_secret" do
    assert_difference("SavedSecret.count") do
      post saved_secrets_url, params: { saved_secret: { saved_skb: @saved_secret.saved_skb, title: @saved_secret.title } }
    end

    assert_redirected_to saved_secret_url(SavedSecret.last)
  end

  test "should show saved_secret" do
    get saved_secret_url(@saved_secret)
    assert_response :success
  end

  test "should get edit" do
    get edit_saved_secret_url(@saved_secret)
    assert_response :success
  end

  test "should update saved_secret" do
    patch saved_secret_url(@saved_secret), params: { saved_secret: { saved_skb: @saved_secret.saved_skb, title: @saved_secret.title } }
    assert_redirected_to saved_secret_url(@saved_secret)
  end

  test "should destroy saved_secret" do
    assert_difference("SavedSecret.count", -1) do
      delete saved_secret_url(@saved_secret)
    end

    assert_redirected_to saved_secrets_url
  end
end
