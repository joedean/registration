require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { category: @course.category, class_room_id: @course.class_room_id, end_age: @course.end_age, end_at: @course.end_at, level: @course.level, max_size: @course.max_size, name: @course.name, start_age: @course.start_age, start_at: @course.start_at, wday: @course.wday } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { category: @course.category, class_room_id: @course.class_room_id, end_age: @course.end_age, end_at: @course.end_at, level: @course.level, max_size: @course.max_size, name: @course.name, start_age: @course.start_age, start_at: @course.start_at, wday: @course.wday } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
