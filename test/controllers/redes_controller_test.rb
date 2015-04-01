require 'test_helper'

class RedesControllerTest < ActionController::TestCase
  setup do
    @rede = redes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:redes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rede" do
    assert_difference('Rede.count') do
      post :create, rede: { nome: @rede.nome }
    end

    assert_redirected_to rede_path(assigns(:rede))
  end

  test "should show rede" do
    get :show, id: @rede
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rede
    assert_response :success
  end

  test "should update rede" do
    patch :update, id: @rede, rede: { nome: @rede.nome }
    assert_redirected_to rede_path(assigns(:rede))
  end

  test "should destroy rede" do
    assert_difference('Rede.count', -1) do
      delete :destroy, id: @rede
    end

    assert_redirected_to redes_path
  end
end
