require 'test_helper'

class ReportControllerTest < ActionController::TestCase
  test "should get reportlist" do
    get :reportlist
    assert_response :success
  end

  test "should get customerlist" do
    get :customerlist
    assert_response :success
  end

  test "should get productlist" do
    get :productlist
    assert_response :success
  end

  test "should get salelist" do
    get :salelist
    assert_response :success
  end

end
