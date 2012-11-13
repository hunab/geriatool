require 'test_helper'

class HospitalDerivationsControllerTest < ActionController::TestCase
  setup do
    @hospital_derivation = hospital_derivations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospital_derivations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospital_derivation" do
    assert_difference('HospitalDerivation.count') do
      post :create, hospital_derivation: { derivation_cause: @hospital_derivation.derivation_cause, derivation_date: @hospital_derivation.derivation_date, derivation_hospital: @hospital_derivation.derivation_hospital, derivation_print: @hospital_derivation.derivation_print, discharge_date: @hospital_derivation.discharge_date, discharge_diagnosis: @hospital_derivation.discharge_diagnosis }
    end

    assert_redirected_to hospital_derivation_path(assigns(:hospital_derivation))
  end

  test "should show hospital_derivation" do
    get :show, id: @hospital_derivation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospital_derivation
    assert_response :success
  end

  test "should update hospital_derivation" do
    put :update, id: @hospital_derivation, hospital_derivation: { derivation_cause: @hospital_derivation.derivation_cause, derivation_date: @hospital_derivation.derivation_date, derivation_hospital: @hospital_derivation.derivation_hospital, derivation_print: @hospital_derivation.derivation_print, discharge_date: @hospital_derivation.discharge_date, discharge_diagnosis: @hospital_derivation.discharge_diagnosis }
    assert_redirected_to hospital_derivation_path(assigns(:hospital_derivation))
  end

  test "should destroy hospital_derivation" do
    assert_difference('HospitalDerivation.count', -1) do
      delete :destroy, id: @hospital_derivation
    end

    assert_redirected_to hospital_derivations_path
  end
end
