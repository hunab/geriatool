require 'test_helper'

class TreatmentsControllerTest < ActionController::TestCase
  setup do
    @treatment = treatments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:treatments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create treatment" do
    assert_difference('Treatment.count') do
      post :create, treatment: { ce: @treatment.ce, co: @treatment.co, current_treatment: @treatment.current_treatment, de: @treatment.de, end_date: @treatment.end_date, introduction: @treatment.introduction, med_treat_order: @treatment.med_treat_order, modify: @treatment.modify, national_code: @treatment.national_code, no: @treatment.no, num_pills: @treatment.num_pills, otro: @treatment.otro, prescriptions: @treatment.prescriptions, prize: @treatment.prize, start_date: @treatment.start_date, target: @treatment.target, treatment: @treatment.treatment }
    end

    assert_redirected_to treatment_path(assigns(:treatment))
  end

  test "should show treatment" do
    get :show, id: @treatment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @treatment
    assert_response :success
  end

  test "should update treatment" do
    put :update, id: @treatment, treatment: { ce: @treatment.ce, co: @treatment.co, current_treatment: @treatment.current_treatment, de: @treatment.de, end_date: @treatment.end_date, introduction: @treatment.introduction, med_treat_order: @treatment.med_treat_order, modify: @treatment.modify, national_code: @treatment.national_code, no: @treatment.no, num_pills: @treatment.num_pills, otro: @treatment.otro, prescriptions: @treatment.prescriptions, prize: @treatment.prize, start_date: @treatment.start_date, target: @treatment.target, treatment: @treatment.treatment }
    assert_redirected_to treatment_path(assigns(:treatment))
  end

  test "should destroy treatment" do
    assert_difference('Treatment.count', -1) do
      delete :destroy, id: @treatment
    end

    assert_redirected_to treatments_path
  end
end
