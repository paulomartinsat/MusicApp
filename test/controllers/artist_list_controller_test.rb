require "test_helper"

class ArtistListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artist_list_index_url
    assert_response :success
  end
end
