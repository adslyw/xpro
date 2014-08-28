require 'test_helper'

class ProdsControllerTest < ActionController::TestCase
  setup do
    @prod = prods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prod" do
    assert_difference('Prod.count') do
      post :create, prod: { f_if_3g: @prod.f_if_3g, f_prod_id: @prod.f_prod_id, f_prod_name: @prod.f_prod_name, f_prod_type: @prod.f_prod_type, f_service_kind: @prod.f_service_kind }
    end

    assert_redirected_to prod_path(assigns(:prod))
  end

  test "should show prod" do
    get :show, id: @prod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prod
    assert_response :success
  end

  test "should update prod" do
    put :update, id: @prod, prod: { f_if_3g: @prod.f_if_3g, f_prod_id: @prod.f_prod_id, f_prod_name: @prod.f_prod_name, f_prod_type: @prod.f_prod_type, f_service_kind: @prod.f_service_kind }
    assert_redirected_to prod_path(assigns(:prod))
  end

  test "should destroy prod" do
    assert_difference('Prod.count', -1) do
      delete :destroy, id: @prod
    end

    assert_redirected_to prods_path
  end
end
