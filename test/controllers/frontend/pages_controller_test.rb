require 'test_helper'

class Frontend::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get frontend_pages_home_url
    assert_response :success
  end

end
