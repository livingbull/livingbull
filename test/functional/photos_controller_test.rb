require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  setup do
    @photo = photos(:one)
    @user = users(:one)
  end

  test "gets index" do
    get :index
    assert :success
  end

  test "gets photo gallery" do
    get :photo_gallery
    assert :success
  end

  test "gets new" do
    get :new
    assert :success
  end

  test "posts to create" do
    post :create, photo: @photo.attributes
    assert_redirected_to photo_path(assigns(:photo))
  end

  test "gets edit" do
    get :edit, id: @photo.id
    assert :success
  end

end
