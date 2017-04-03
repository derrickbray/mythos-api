require 'test_helper'

class MythosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mythos_index_url
    assert_response :success
  end

end
