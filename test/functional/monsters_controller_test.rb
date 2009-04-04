require 'test_helper'

class MonstersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monsters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monster" do
    assert_difference('Monster.count') do
      post :create, :monster => { }
    end

    assert_redirected_to monster_path(assigns(:monster))
  end

  test "should show monster" do
    get :show, :id => monsters(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => monsters(:one).to_param
    assert_response :success
  end

  test "should update monster" do
    put :update, :id => monsters(:one).to_param, :monster => { }
    assert_redirected_to monster_path(assigns(:monster))
  end

  test "should destroy monster" do
    assert_difference('Monster.count', -1) do
      delete :destroy, :id => monsters(:one).to_param
    end

    assert_redirected_to monsters_path
  end
end
