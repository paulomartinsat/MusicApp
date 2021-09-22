require "test_helper"

class AlbumControllerTest < ActionDispatch::IntegrationTest
  test "should get artist" do
    get album_artist_url
    assert_response :success
  end

  test "should get album_name" do
    get album_album_name_url
    assert_response :success
  end

  test "should get year" do
    get album_year_url
    assert_response :success
  end
end
