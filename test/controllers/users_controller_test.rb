require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index1" do
    get users_index1_url
    assert_response :success
  end
end
