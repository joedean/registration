require 'test_helper'

class TeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher = teachers(:one)
  end

  test "should get index" do
    get teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_url
    assert_response :success
  end

  test "should create teacher" do
    assert_difference('Teacher.count') do
      post teachers_url, params: { teacher: { active: @teacher.active, birth_date: @teacher.birth_date, company_id: @teacher.company_id, contractor: @teacher.contractor, email: @teacher.email, end_date: @teacher.end_date, first_name: @teacher.first_name, last_name: @teacher.last_name, mobile_phone: @teacher.mobile_phone, start_date: @teacher.start_date } }
    end

    assert_redirected_to teacher_url(Teacher.last)
  end

  test "should show teacher" do
    get teacher_url(@teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_url(@teacher)
    assert_response :success
  end

  test "should update teacher" do
    patch teacher_url(@teacher), params: { teacher: { active: @teacher.active, birth_date: @teacher.birth_date, company_id: @teacher.company_id, contractor: @teacher.contractor, email: @teacher.email, end_date: @teacher.end_date, first_name: @teacher.first_name, last_name: @teacher.last_name, mobile_phone: @teacher.mobile_phone, start_date: @teacher.start_date } }
    assert_redirected_to teacher_url(@teacher)
  end

  test "should destroy teacher" do
    assert_difference('Teacher.count', -1) do
      delete teacher_url(@teacher)
    end

    assert_redirected_to teachers_url
  end
end
