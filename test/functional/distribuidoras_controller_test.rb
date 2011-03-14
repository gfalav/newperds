require 'test_helper'

class DistribuidorasControllerTest < ActionController::TestCase
  setup do
    @distribuidora = distribuidoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distribuidoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distribuidora" do
    assert_difference('Distribuidora.count') do
      post :create, :distribuidora => @distribuidora.attributes
    end

    assert_redirected_to distribuidora_path(assigns(:distribuidora))
  end

  test "should show distribuidora" do
    get :show, :id => @distribuidora.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @distribuidora.to_param
    assert_response :success
  end

  test "should update distribuidora" do
    put :update, :id => @distribuidora.to_param, :distribuidora => @distribuidora.attributes
    assert_redirected_to distribuidora_path(assigns(:distribuidora))
  end

  test "should destroy distribuidora" do
    assert_difference('Distribuidora.count', -1) do
      delete :destroy, :id => @distribuidora.to_param
    end

    assert_redirected_to distribuidoras_path
  end
end
