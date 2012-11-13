require 'test_helper'

class BiochemistryTestsControllerTest < ActionController::TestCase
  setup do
    @biochemistry_test = biochemistry_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biochemistry_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biochemistry_test" do
    assert_difference('BiochemistryTest.count') do
      post :create, biochemistry_test: { ac_folico: @biochemistry_test.ac_folico, alt: @biochemistry_test.alt, ast: @biochemistry_test.ast, cHDL: @biochemistry_test.cHDL, cLDL: @biochemistry_test.cLDL, cholesterol: @biochemistry_test.cholesterol, cobalamins_vitb12: @biochemistry_test.cobalamins_vitb12, creatinine: @biochemistry_test.creatinine, extraction_date: @biochemistry_test.extraction_date, ferritin: @biochemistry_test.ferritin, ft3: @biochemistry_test.ft3, ft4: @biochemistry_test.ft4, glucemy: @biochemistry_test.glucemy, hba1c: @biochemistry_test.hba1c, iron: @biochemistry_test.iron, potassium: @biochemistry_test.potassium, sodium: @biochemistry_test.sodium, triglycerides: @biochemistry_test.triglycerides, tsh: @biochemistry_test.tsh, urea: @biochemistry_test.urea, uric_acid: @biochemistry_test.uric_acid, vsg: @biochemistry_test.vsg }
    end

    assert_redirected_to biochemistry_test_path(assigns(:biochemistry_test))
  end

  test "should show biochemistry_test" do
    get :show, id: @biochemistry_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biochemistry_test
    assert_response :success
  end

  test "should update biochemistry_test" do
    put :update, id: @biochemistry_test, biochemistry_test: { ac_folico: @biochemistry_test.ac_folico, alt: @biochemistry_test.alt, ast: @biochemistry_test.ast, cHDL: @biochemistry_test.cHDL, cLDL: @biochemistry_test.cLDL, cholesterol: @biochemistry_test.cholesterol, cobalamins_vitb12: @biochemistry_test.cobalamins_vitb12, creatinine: @biochemistry_test.creatinine, extraction_date: @biochemistry_test.extraction_date, ferritin: @biochemistry_test.ferritin, ft3: @biochemistry_test.ft3, ft4: @biochemistry_test.ft4, glucemy: @biochemistry_test.glucemy, hba1c: @biochemistry_test.hba1c, iron: @biochemistry_test.iron, potassium: @biochemistry_test.potassium, sodium: @biochemistry_test.sodium, triglycerides: @biochemistry_test.triglycerides, tsh: @biochemistry_test.tsh, urea: @biochemistry_test.urea, uric_acid: @biochemistry_test.uric_acid, vsg: @biochemistry_test.vsg }
    assert_redirected_to biochemistry_test_path(assigns(:biochemistry_test))
  end

  test "should destroy biochemistry_test" do
    assert_difference('BiochemistryTest.count', -1) do
      delete :destroy, id: @biochemistry_test
    end

    assert_redirected_to biochemistry_tests_path
  end
end
