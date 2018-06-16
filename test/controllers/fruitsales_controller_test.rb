require 'test_helper'

class FruitsalesControllerTest < ActionController::TestCase
  setup do
    @fruitsale = fruitsales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fruitsales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fruitsale" do
    assert_difference('Fruitsale.count') do
      post :create, fruitsale: { created_at: @fruitsale.created_at, customer_id: @fruitsale.customer_id, fruit_id: @fruitsale.fruit_id, purchase_id: @fruitsale.purchase_id, purchasedate: @fruitsale.purchasedate, saleprice: @fruitsale.saleprice, status: @fruitsale.status, updated_at: @fruitsale.updated_at }
    end

    assert_redirected_to fruitsale_path(assigns(:fruitsale))
  end

  test "should show fruitsale" do
    get :show, id: @fruitsale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fruitsale
    assert_response :success
  end

  test "should update fruitsale" do
    patch :update, id: @fruitsale, fruitsale: { created_at: @fruitsale.created_at, customer_id: @fruitsale.customer_id, fruit_id: @fruitsale.fruit_id, purchase_id: @fruitsale.purchase_id, purchasedate: @fruitsale.purchasedate, saleprice: @fruitsale.saleprice, status: @fruitsale.status, updated_at: @fruitsale.updated_at }
    assert_redirected_to fruitsale_path(assigns(:fruitsale))
  end

  test "should destroy fruitsale" do
    assert_difference('Fruitsale.count', -1) do
      delete :destroy, id: @fruitsale
    end

    assert_redirected_to fruitsales_path
  end
end
