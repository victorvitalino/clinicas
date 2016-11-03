require 'test_helper'

class ProcedureTypesControllerTest < ActionController::TestCase
  setup do
    @procedure_type = procedure_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procedure_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procedure_type" do
    assert_difference('ProcedureType.count') do
      post :create, procedure_type: { procedure_id: @procedure_type.procedure_id, procedure_type_name: @procedure_type.procedure_type_name }
    end

    assert_redirected_to procedure_type_path(assigns(:procedure_type))
  end

  test "should show procedure_type" do
    get :show, id: @procedure_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procedure_type
    assert_response :success
  end

  test "should update procedure_type" do
    patch :update, id: @procedure_type, procedure_type: { procedure_id: @procedure_type.procedure_id, procedure_type_name: @procedure_type.procedure_type_name }
    assert_redirected_to procedure_type_path(assigns(:procedure_type))
  end

  test "should destroy procedure_type" do
    assert_difference('ProcedureType.count', -1) do
      delete :destroy, id: @procedure_type
    end

    assert_redirected_to procedure_types_path
  end
end
