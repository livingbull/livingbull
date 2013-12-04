require 'test_helper'

class PhotosControllerTest < ActionController::TestCase

  test "gets index" do
    get :index
    assert :success
  end

  test "gets gallery" do
    get :gallery
    assert :success
  end

end
