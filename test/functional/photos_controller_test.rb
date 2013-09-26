require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  test "should get index" do
    get :gallery
    assert_response :success
  end

end
