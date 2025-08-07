require "test_helper"

class HostelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hostels_index_url
    assert_response :success
  end
end
