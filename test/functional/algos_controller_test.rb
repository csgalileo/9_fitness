require 'test_helper'

class AlgosControllerTest < ActionController::TestCase
  setup do
    @algo = algos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:algos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create algo" do
    assert_difference('Algo.count') do
      post :create, :algo => @algo.attributes
    end

    assert_redirected_to algo_path(assigns(:algo))
  end

  test "should show algo" do
    get :show, :id => @algo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @algo.to_param
    assert_response :success
  end

  test "should update algo" do
    put :update, :id => @algo.to_param, :algo => @algo.attributes
    assert_redirected_to algo_path(assigns(:algo))
  end

  test "should destroy algo" do
    assert_difference('Algo.count', -1) do
      delete :destroy, :id => @algo.to_param
    end

    assert_redirected_to algos_path
  end
end
