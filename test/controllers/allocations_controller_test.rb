require "test_helper"

class AllocationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get allocations_new_url
    assert_response :success
  end

  test "should get create" do
    get allocations_create_url
    assert_response :success
  end

  test "should get index" do
    get allocations_index_url
    assert_response :success
  end

  test "should get show" do
    get allocations_show_url
    assert_response :success
  end

  test "should get edit" do
    get allocations_edit_url
    assert_response :success
  end

  test "should get update" do
    get allocations_update_url
    assert_response :success
  end

  test "should get delete" do
    get allocations_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get allocations_destroy_url
    assert_response :success
  end
end
