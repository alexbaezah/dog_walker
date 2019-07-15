require 'test_helper'

class Maps2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get maps2_index_url
    assert_response :success
  end

end
