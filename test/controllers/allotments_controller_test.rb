require "test_helper"

class AllotmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get allotments_new_url
    assert_response :success
  end

  test "should get create" do
    get allotments_create_url
    assert_response :success
  end

  test "should get show" do
    get allotments_show_url
    assert_response :success
  end

  test "should get index" do
    get allotments_index_url
    assert_response :success
  end

  test "should get edit" do
    get allotments_edit_url
    assert_response :success
  end

  test "should get update" do
    get allotments_update_url
    assert_response :success
  end

  test "should get destroy" do
    get allotments_destroy_url
    assert_response :success
  end
end
