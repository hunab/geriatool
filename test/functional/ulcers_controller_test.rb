require 'test_helper'

class UlcersControllerTest < ActionController::TestCase
  setup do
    @ulcer = ulcers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ulcers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ulcer" do
    assert_difference('Ulcer.count') do
      post :create, ulcer: { ulcer: @ulcer.ulcer, ulcer_start_date: @ulcer.ulcer_start_date, ulder_end_date: @ulcer.ulder_end_date }
    end

    assert_redirected_to ulcer_path(assigns(:ulcer))
  end

  test "should show ulcer" do
    get :show, id: @ulcer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ulcer
    assert_response :success
  end

  test "should update ulcer" do
    put :update, id: @ulcer, ulcer: { ulcer: @ulcer.ulcer, ulcer_start_date: @ulcer.ulcer_start_date, ulder_end_date: @ulcer.ulder_end_date }
    assert_redirected_to ulcer_path(assigns(:ulcer))
  end

  test "should destroy ulcer" do
    assert_difference('Ulcer.count', -1) do
      delete :destroy, id: @ulcer
    end

    assert_redirected_to ulcers_path
  end
end
