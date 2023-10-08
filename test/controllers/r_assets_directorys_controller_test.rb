require "test_helper"

class RAssetsDirectorysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get r_assets_directorys_index_url
    assert_response :success
  end

  test "should get create" do
    get r_assets_directorys_create_url
    assert_response :success
  end

  test "should get index" do
    get r_assets_directorys_index_url
    assert_response :success
  end

  test "should get show" do
    get r_assets_directorys_show_url
    assert_response :success
  end

  test "should get edit" do
    get r_assets_directorys_edit_url
    assert_response :success
  end

  test "should get update" do
    get r_assets_directorys_update_url
    assert_response :success
  end

  test "should get delete" do
    get r_assets_directorys_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get r_assets_directorys_destroy_url
    assert_response :success
  end
end
