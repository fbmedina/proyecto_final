require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  # test "should get index" do
  #   get :index
  #   assert_response :success
  # end

  test "logged user should get index" do
    sign_in(users(:logged))
    get :index
    assert_response :success
  end

  test "not logged user should not get index" do
    get :index
    assert_response :redirect
  end

end
