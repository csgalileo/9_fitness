require 'test_helper'

class RutinasControllerTest < ActionController::TestCase
  setup do
    @rutina = rutinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rutinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rutina" do
    assert_difference('Rutina.count') do
      post :create, :rutina => @rutina.attributes
    end

    assert_redirected_to rutina_path(assigns(:rutina))
  end

  test "should show rutina" do
    get :show, :id => @rutina.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @rutina.to_param
    assert_response :success
  end

  test "should update rutina" do
    put :update, :id => @rutina.to_param, :rutina => @rutina.attributes
    assert_redirected_to rutina_path(assigns(:rutina))
  end

  test "should destroy rutina" do
    assert_difference('Rutina.count', -1) do
      delete :destroy, :id => @rutina.to_param
    end

    assert_redirected_to rutinas_path
  end
end
