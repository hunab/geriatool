require 'test_helper'

class ClinicalCoursesControllerTest < ActionController::TestCase
  setup do
    @clinical_course = clinical_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinical_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinical_course" do
    assert_difference('ClinicalCourse.count') do
      post :create, clinical_course: { A: @clinical_course.A, E: @clinical_course.E, M: @clinical_course.M, P: @clinical_course.P, course_date: @clinical_course.course_date }
    end

    assert_redirected_to clinical_course_path(assigns(:clinical_course))
  end

  test "should show clinical_course" do
    get :show, id: @clinical_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinical_course
    assert_response :success
  end

  test "should update clinical_course" do
    put :update, id: @clinical_course, clinical_course: { A: @clinical_course.A, E: @clinical_course.E, M: @clinical_course.M, P: @clinical_course.P, course_date: @clinical_course.course_date }
    assert_redirected_to clinical_course_path(assigns(:clinical_course))
  end

  test "should destroy clinical_course" do
    assert_difference('ClinicalCourse.count', -1) do
      delete :destroy, id: @clinical_course
    end

    assert_redirected_to clinical_courses_path
  end
end
