require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get author" do
    get :author
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
