require 'test_helper'

class CyclesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cycles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cycle" do
    assert_difference('Cycle.count') do
      post :create, :cycle => { }
    end

    assert_redirected_to cycle_path(assigns(:cycle))
  end

  test "should show cycle" do
    get :show, :id => cycles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cycles(:one).to_param
    assert_response :success
  end

  test "should update cycle" do
    put :update, :id => cycles(:one).to_param, :cycle => { }
    assert_redirected_to cycle_path(assigns(:cycle))
  end

  test "should destroy cycle" do
    assert_difference('Cycle.count', -1) do
      delete :destroy, :id => cycles(:one).to_param
    end

    assert_redirected_to cycles_path
  end
end
