require 'test_helper'

class GeocoderControllerTest < ActionDispatch::IntegrationTest
  test "should get finaddress" do
    get geocoder_finaddress_url
    assert_response :success
  end

end
