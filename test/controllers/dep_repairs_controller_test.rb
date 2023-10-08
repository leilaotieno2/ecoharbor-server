require "test_helper"

class DepRepairsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get dep_repairs_create_url
    assert_response :success
  end

  test "should get index" do
    get dep_repairs_index_url
    assert_response :success
  end

  test "should get show" do
    get dep_repairs_show_url
    assert_response :success
  end

  test "should get edit" do
    get dep_repairs_edit_url
    assert_response :success
  end

  test "should get update" do
    get dep_repairs_update_url
    assert_response :success
  end

  test "should get delete" do
    get dep_repairs_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get dep_repairs_destroy_url
    assert_response :success
  end
end
