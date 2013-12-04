require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  test "gets index" do
    get :index
    assert :success
  end

  test "gets software" do
    get :software
    assert :success
  end

end
