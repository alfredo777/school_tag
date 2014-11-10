require 'test_helper'

class CreateControllerTest < ActionController::TestCase
  test "should get tag" do
    get :tag
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get report" do
    get :report
    assert_response :success
  end

end
