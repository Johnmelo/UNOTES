require 'test_helper'

class PastaControllerTest < ActionController::TestCase
  setup do
    @pastum = pasta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pasta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pastum" do
    assert_difference('Pastum.count') do
      post :create, pastum: { name: @pastum.name }
    end

    assert_redirected_to pastum_path(assigns(:pastum))
  end

  test "should show pastum" do
    get :show, id: @pastum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pastum
    assert_response :success
  end

  test "should update pastum" do
    put :update, id: @pastum, pastum: { name: @pastum.name }
    assert_redirected_to pastum_path(assigns(:pastum))
  end

  test "should destroy pastum" do
    assert_difference('Pastum.count', -1) do
      delete :destroy, id: @pastum
    end

    assert_redirected_to pasta_path
  end
end
