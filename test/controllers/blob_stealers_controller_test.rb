require "test_helper"

class BlobStealersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blob_stealer = blob_stealers(:one)
  end

  test "should get index" do
    get blob_stealers_url
    assert_response :success
  end

  test "should get new" do
    get new_blob_stealer_url
    assert_response :success
  end

  test "should create blob_stealer" do
    assert_difference("BlobStealer.count") do
      post blob_stealers_url, params: { blob_stealer: { stolen_id: @blob_stealer.stolen_id, stolen_purpose: @blob_stealer.stolen_purpose, stolen_signed_id: @blob_stealer.stolen_signed_id, title: @blob_stealer.title } }
    end

    assert_redirected_to blob_stealer_url(BlobStealer.last)
  end

  test "should show blob_stealer" do
    get blob_stealer_url(@blob_stealer)
    assert_response :success
  end

  test "should get edit" do
    get edit_blob_stealer_url(@blob_stealer)
    assert_response :success
  end

  test "should update blob_stealer" do
    patch blob_stealer_url(@blob_stealer), params: { blob_stealer: { stolen_id: @blob_stealer.stolen_id, stolen_purpose: @blob_stealer.stolen_purpose, stolen_signed_id: @blob_stealer.stolen_signed_id, title: @blob_stealer.title } }
    assert_redirected_to blob_stealer_url(@blob_stealer)
  end

  test "should destroy blob_stealer" do
    assert_difference("BlobStealer.count", -1) do
      delete blob_stealer_url(@blob_stealer)
    end

    assert_redirected_to blob_stealers_url
  end
end
