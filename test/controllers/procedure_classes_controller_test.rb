require 'test_helper'

class ProcedureClassesControllerTest < ActionController::TestCase
  setup do
    @procedure_class = procedure_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procedure_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procedure_class" do
    assert_difference('ProcedureClass.count') do
      post :create, procedure_class: { procedure_class_name: @procedure_class.procedure_class_name, procedure_type_id: @procedure_class.procedure_type_id }
    end

    assert_redirected_to procedure_class_path(assigns(:procedure_class))
  end

  test "should show procedure_class" do
    get :show, id: @procedure_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procedure_class
    assert_response :success
  end

  test "should update procedure_class" do
    patch :update, id: @procedure_class, procedure_class: { procedure_class_name: @procedure_class.procedure_class_name, procedure_type_id: @procedure_class.procedure_type_id }
    assert_redirected_to procedure_class_path(assigns(:procedure_class))
  end

  test "should destroy procedure_class" do
    assert_difference('ProcedureClass.count', -1) do
      delete :destroy, id: @procedure_class
    end

    assert_redirected_to procedure_classes_path
  end
end
