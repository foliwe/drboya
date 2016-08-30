require 'test_helper'

class ContentsControllerTest < ActionController::TestCase
  test "should get herbal" do
    get :herbal
    assert_response :success
  end

  test "should get patient" do
    get :patient
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

end
