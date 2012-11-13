require 'test_helper'

class MedicalRecordsControllerTest < ActionController::TestCase
  setup do
    @medical_record = medical_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_record" do
    assert_difference('MedicalRecord.count') do
      post :create, medical_record: { admission_date: @medical_record.admission_date, allergies: @medical_record.allergies, decreasings: @medical_record.decreasings, diet: @medical_record.diet, exit_date: @medical_record.exit_date, exit_report: @medical_record.exit_report, incontinence: @medical_record.incontinence, objective: @medical_record.objective }
    end

    assert_redirected_to medical_record_path(assigns(:medical_record))
  end

  test "should show medical_record" do
    get :show, id: @medical_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_record
    assert_response :success
  end

  test "should update medical_record" do
    put :update, id: @medical_record, medical_record: { admission_date: @medical_record.admission_date, allergies: @medical_record.allergies, decreasings: @medical_record.decreasings, diet: @medical_record.diet, exit_date: @medical_record.exit_date, exit_report: @medical_record.exit_report, incontinence: @medical_record.incontinence, objective: @medical_record.objective }
    assert_redirected_to medical_record_path(assigns(:medical_record))
  end

  test "should destroy medical_record" do
    assert_difference('MedicalRecord.count', -1) do
      delete :destroy, id: @medical_record
    end

    assert_redirected_to medical_records_path
  end
end
