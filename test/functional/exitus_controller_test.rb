require 'test_helper'

class ExitusControllerTest < ActionController::TestCase
  setup do
    @exitu = exitus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exitus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exitu" do
    assert_difference('Exitu.count') do
      post :create, exitu: { date: @exitu.date, exitus_diagnosis: @exitu.exitus_diagnosis, place_exitus: @exitu.place_exitus }
    end

    assert_redirected_to exitu_path(assigns(:exitu))
  end

  test "should show exitu" do
    get :show, id: @exitu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exitu
    assert_response :success
  end

  test "should update exitu" do
    put :update, id: @exitu, exitu: { date: @exitu.date, exitus_diagnosis: @exitu.exitus_diagnosis, place_exitus: @exitu.place_exitus }
    assert_redirected_to exitu_path(assigns(:exitu))
  end

  test "should destroy exitu" do
    assert_difference('Exitu.count', -1) do
      delete :destroy, id: @exitu
    end

    assert_redirected_to exitus_path
  end
end
