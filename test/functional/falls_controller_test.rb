require 'test_helper'

class FallsControllerTest < ActionController::TestCase
  setup do
    @fall = falls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:falls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fall" do
    assert_difference('Fall.count') do
      post :create, fall: { fall: @fall.fall, fall_date: @fall.fall_date }
    end

    assert_redirected_to fall_path(assigns(:fall))
  end

  test "should show fall" do
    get :show, id: @fall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fall
    assert_response :success
  end

  test "should update fall" do
    put :update, id: @fall, fall: { fall: @fall.fall, fall_date: @fall.fall_date }
    assert_redirected_to fall_path(assigns(:fall))
  end

  test "should destroy fall" do
    assert_difference('Fall.count', -1) do
      delete :destroy, id: @fall
    end

    assert_redirected_to falls_path
  end
end
