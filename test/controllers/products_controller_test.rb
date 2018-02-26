require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { categorie1_id: @product.categorie1_id, categorie2_id: @product.categorie2_id, categorie3_id: @product.categorie3_id, content: @product.content, discount: @product.discount, img: @product.img, name: @product.name, price: @product.price, weight: @product.weight }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { categorie1_id: @product.categorie1_id, categorie2_id: @product.categorie2_id, categorie3_id: @product.categorie3_id, content: @product.content, discount: @product.discount, img: @product.img, name: @product.name, price: @product.price, weight: @product.weight }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end