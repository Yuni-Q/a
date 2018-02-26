require 'test_helper'

class Categorie1sControllerTest < ActionController::TestCase
  setup do
    @categorie1 = categorie1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorie1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorie1" do
    assert_difference('Categorie1.count') do
      post :create, categorie1: {  }
    end

    assert_redirected_to categorie1_path(assigns(:categorie1))
  end

  test "should show categorie1" do
    get :show, id: @categorie1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorie1
    assert_response :success
  end

  test "should update categorie1" do
    patch :update, id: @categorie1, categorie1: {  }
    assert_redirected_to categorie1_path(assigns(:categorie1))
  end

  test "should destroy categorie1" do
    assert_difference('Categorie1.count', -1) do
      delete :destroy, id: @categorie1
    end

    assert_redirected_to categorie1s_path
  end
end
