require 'test_helper'

class PostCheckersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get post_checkers_index_url
    assert_response :success
  end

end
