require "test_helper"

class HostelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hostel_index_url
    assert_response :success
  end
end
