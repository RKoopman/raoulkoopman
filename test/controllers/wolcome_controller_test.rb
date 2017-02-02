require 'test_helper'

class WolcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wolcome_index_url
    assert_response :success
  end

end
