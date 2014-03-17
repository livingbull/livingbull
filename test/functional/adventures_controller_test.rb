require 'test_helper'

class AdventuresControllerTest < ActionController::TestCase
  setup do
    @adventure = adventures(:one)
  end

  test "gets index" do
    get :index
    assert :success
  end

  test "gets new" do
    get :new
    assert :success
  end

  test "posts to create" do
    post :create, adventure: @adventure.attributes
    assert_redirected_to adventure_path(assigns(:adventure))
  end

  test "gets edit" do
    get :edit, id: @adventure.id
    assert :success
  end

end
