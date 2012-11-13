require 'test_helper'

class GaleriesControllerTest < ActionController::TestCase
  setup do
    @galery = galeries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:galeries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create galery" do
    assert_difference('Galery.count') do
      post :create, galery: { comments: @galery.comments, image: @galery.image, image_date: @galery.image_date }
    end

    assert_redirected_to galery_path(assigns(:galery))
  end

  test "should show galery" do
    get :show, id: @galery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @galery
    assert_response :success
  end

  test "should update galery" do
    put :update, id: @galery, galery: { comments: @galery.comments, image: @galery.image, image_date: @galery.image_date }
    assert_redirected_to galery_path(assigns(:galery))
  end

  test "should destroy galery" do
    assert_difference('Galery.count', -1) do
      delete :destroy, id: @galery
    end

    assert_redirected_to galeries_path
  end
end
