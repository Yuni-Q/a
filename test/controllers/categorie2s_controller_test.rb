require 'test_helper'

class Categorie2sControllerTest < ActionController::TestCase
  setup do
    @categorie2 = categorie2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorie2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorie2" do
    assert_difference('Categorie2.count') do
      post :create, categorie2: {  }
    end

    assert_redirected_to categorie2_path(assigns(:categorie2))
  end

  test "should show categorie2" do
    get :show, id: @categorie2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorie2
    assert_response :success
  end

  test "should update categorie2" do
    patch :update, id: @categorie2, categorie2: {  }
    assert_redirected_to categorie2_path(assigns(:categorie2))
  end

  test "should destroy categorie2" do
    assert_difference('Categorie2.count', -1) do
      delete :destroy, id: @categorie2
    end

    assert_redirected_to categorie2s_path
  end
end
