require 'test_helper'

class CellBloodCountTestsControllerTest < ActionController::TestCase
  setup do
    @cell_blood_count_test = cell_blood_count_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cell_blood_count_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cell_blood_count_test" do
    assert_difference('CellBloodCountTest.count') do
      post :create, cell_blood_count_test: { basophil: @cell_blood_count_test.basophil, chcm: @cell_blood_count_test.chcm, cluster_differentiation: @cell_blood_count_test.cluster_differentiation, eosinophil: @cell_blood_count_test.eosinophil, extraction_date: @cell_blood_count_test.extraction_date, hcm: @cell_blood_count_test.hcm, hematocrit: @cell_blood_count_test.hematocrit, hemoglobin: @cell_blood_count_test.hemoglobin, leukocyte: @cell_blood_count_test.leukocyte, monocyte: @cell_blood_count_test.monocyte, neutrophils: @cell_blood_count_test.neutrophils, platelet: @cell_blood_count_test.platelet, red_blood_cells: @cell_blood_count_test.red_blood_cells, vcm: @cell_blood_count_test.vcm }
    end

    assert_redirected_to cell_blood_count_test_path(assigns(:cell_blood_count_test))
  end

  test "should show cell_blood_count_test" do
    get :show, id: @cell_blood_count_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cell_blood_count_test
    assert_response :success
  end

  test "should update cell_blood_count_test" do
    put :update, id: @cell_blood_count_test, cell_blood_count_test: { basophil: @cell_blood_count_test.basophil, chcm: @cell_blood_count_test.chcm, cluster_differentiation: @cell_blood_count_test.cluster_differentiation, eosinophil: @cell_blood_count_test.eosinophil, extraction_date: @cell_blood_count_test.extraction_date, hcm: @cell_blood_count_test.hcm, hematocrit: @cell_blood_count_test.hematocrit, hemoglobin: @cell_blood_count_test.hemoglobin, leukocyte: @cell_blood_count_test.leukocyte, monocyte: @cell_blood_count_test.monocyte, neutrophils: @cell_blood_count_test.neutrophils, platelet: @cell_blood_count_test.platelet, red_blood_cells: @cell_blood_count_test.red_blood_cells, vcm: @cell_blood_count_test.vcm }
    assert_redirected_to cell_blood_count_test_path(assigns(:cell_blood_count_test))
  end

  test "should destroy cell_blood_count_test" do
    assert_difference('CellBloodCountTest.count', -1) do
      delete :destroy, id: @cell_blood_count_test
    end

    assert_redirected_to cell_blood_count_tests_path
  end
end
