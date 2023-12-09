require "test_helper"

class SamplesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_samples_url
    assert_response :success
  end
end
