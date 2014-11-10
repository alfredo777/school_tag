require 'test_helper'

class InstitutionControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get suggest" do
    get :suggest
    assert_response :success
  end

end
