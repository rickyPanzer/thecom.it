require 'test_helper'

class QuestiontypesControllerTest < ActionController::TestCase
  setup do
    @questiontype = questiontypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questiontypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questiontype" do
    assert_difference('Questiontype.count') do
      post :create, questiontype: @questiontype.attributes
    end

    assert_redirected_to questiontype_path(assigns(:questiontype))
  end

  test "should show questiontype" do
    get :show, id: @questiontype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questiontype.to_param
    assert_response :success
  end

  test "should update questiontype" do
    put :update, id: @questiontype.to_param, questiontype: @questiontype.attributes
    assert_redirected_to questiontype_path(assigns(:questiontype))
  end

  test "should destroy questiontype" do
    assert_difference('Questiontype.count', -1) do
      delete :destroy, id: @questiontype.to_param
    end

    assert_redirected_to questiontypes_path
  end
end
