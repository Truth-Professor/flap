require 'test_helper'

class CdsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get cds_top_url
    assert_response :success
  end

  test "should get index" do
    get cds_index_url
    assert_response :success
  end

  test "should get index_genre" do
    get cds_index_genre_url
    assert_response :success
  end

  test "should get show" do
    get cds_show_url
    assert_response :success
  end

  test "should get update" do
    get cds_update_url
    assert_response :success
  end

end