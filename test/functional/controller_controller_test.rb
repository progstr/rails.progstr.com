require 'test_helper'

class ControllerControllerTest < ActionController::TestCase
  test "should get errors" do
    get :errors
    assert_response :success
  end

end
