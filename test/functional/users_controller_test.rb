require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  test "get index" do
    get :index
    assert :success
  end

end