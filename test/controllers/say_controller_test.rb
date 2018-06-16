require 'test_helper'

class SayControllerTest < ActionController::TestCase
  test "should get hello" do
    get :hello
    assert_response :success
  end

  test "should get response1" do
    get :response1
    assert_response :success
  end

  test "should get response2" do
    get :response2
    assert_response :success
  end

end
