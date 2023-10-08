require "test_helper"

class AprrovalsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get aprrovals_new_url
    assert_response :success
  end

  test "should get create" do
    get aprrovals_create_url
    assert_response :success
  end

  test "should get index" do
    get aprrovals_index_url
    assert_response :success
  end

  test "should get show" do
    get aprrovals_show_url
    assert_response :success
  end

  test "should get edit" do
    get aprrovals_edit_url
    assert_response :success
  end

  test "should get update" do
    get aprrovals_update_url
    assert_response :success
  end

  test "should get delete" do
    get aprrovals_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get aprrovals_destroy_url
    assert_response :success
  end
end
