require 'test_helper'

class ContainmentsControllerTest < ActionController::TestCase
  setup do
    @containment = containments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:containments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create containment" do
    assert_difference('Containment.count') do
      post :create, containment: { cont_end_date: @containment.cont_end_date, cont_start_date: @containment.cont_start_date, revision_date: @containment.revision_date }
    end

    assert_redirected_to containment_path(assigns(:containment))
  end

  test "should show containment" do
    get :show, id: @containment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @containment
    assert_response :success
  end

  test "should update containment" do
    put :update, id: @containment, containment: { cont_end_date: @containment.cont_end_date, cont_start_date: @containment.cont_start_date, revision_date: @containment.revision_date }
    assert_redirected_to containment_path(assigns(:containment))
  end

  test "should destroy containment" do
    assert_difference('Containment.count', -1) do
      delete :destroy, id: @containment
    end

    assert_redirected_to containments_path
  end
end
