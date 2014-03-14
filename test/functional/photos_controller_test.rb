require 'test_helper'

class PhotosControllerTest < ActionController::TestCase

  test "gets index" do
    get :index
    assert :success
  end

  test "gets photo gallery" do
    get :photo_gallery
    assert :success
  end

end
