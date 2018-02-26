require 'test_helper'

class Categorie3sControllerTest < ActionController::TestCase
  setup do
    @categorie3 = categorie3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorie3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorie3" do
    assert_difference('Categorie3.count') do
      post :create, categorie3: {  }
    end

    assert_redirected_to categorie3_path(assigns(:categorie3))
  end

  test "should show categorie3" do
    get :show, id: @categorie3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorie3
    assert_response :success
  end

  test "should update categorie3" do
    patch :update, id: @categorie3, categorie3: {  }
    assert_redirected_to categorie3_path(assigns(:categorie3))
  end

  test "should destroy categorie3" do
    assert_difference('Categorie3.count', -1) do
      delete :destroy, id: @categorie3
    end

    assert_redirected_to categorie3s_path
  end
end
