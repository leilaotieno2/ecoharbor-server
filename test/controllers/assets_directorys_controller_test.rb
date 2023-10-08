require "test_helper"

class AssetsDirectorysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get assets_directorys_index_url
    assert_response :success
  end

  test "should get create" do
    get assets_directorys_create_url
    assert_response :success
  end

  test "should get index" do
    get assets_directorys_index_url
    assert_response :success
  end

  test "should get show" do
    get assets_directorys_show_url
    assert_response :success
  end

  test "should get edit" do
    get assets_directorys_edit_url
    assert_response :success
  end

  test "should get update" do
    get assets_directorys_update_url
    assert_response :success
  end

  test "should get delete" do
    get assets_directorys_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get assets_directorys_destroy_url
    assert_response :success
  end
end
