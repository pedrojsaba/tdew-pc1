require 'test_helper'

class BookMarksControllerTest < ActionController::TestCase
  setup do
    @book_mark = book_marks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_marks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_mark" do
    assert_difference('BookMark.count') do
      post :create, book_mark: @book_mark.attributes
    end

    assert_redirected_to book_mark_path(assigns(:book_mark))
  end

  test "should show book_mark" do
    get :show, id: @book_mark.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_mark.to_param
    assert_response :success
  end

  test "should update book_mark" do
    put :update, id: @book_mark.to_param, book_mark: @book_mark.attributes
    assert_redirected_to book_mark_path(assigns(:book_mark))
  end

  test "should destroy book_mark" do
    assert_difference('BookMark.count', -1) do
      delete :destroy, id: @book_mark.to_param
    end

    assert_redirected_to book_marks_path
  end
end
