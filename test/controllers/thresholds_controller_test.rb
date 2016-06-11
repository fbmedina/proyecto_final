require 'test_helper'

class ThresholdsControllerTest < ActionController::TestCase
  test "should get second_view" do
    get :second_view
    assert_response :success
  end

  test "should get third_view" do
    get :third_view
    assert_response :success
  end

end
