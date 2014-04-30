require 'test_helper'

class CemeteriesControllerTest < ActionController::TestCase
  setup do
    @cemetery = cemeteries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cemeteries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cemetery" do
    assert_difference('Cemetery.count') do
      post :create, cemetery: { address: @cemetery.address, address_two: @cemetery.address_two, city: @cemetery.city, description: @cemetery.description, name: @cemetery.name, phone: @cemetery.phone, state: @cemetery.state, url: @cemetery.url, zip: @cemetery.zip }
    end

    assert_redirected_to cemetery_path(assigns(:cemetery))
  end

  test "should show cemetery" do
    get :show, id: @cemetery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cemetery
    assert_response :success
  end

  test "should update cemetery" do
    patch :update, id: @cemetery, cemetery: { address: @cemetery.address, address_two: @cemetery.address_two, city: @cemetery.city, description: @cemetery.description, name: @cemetery.name, phone: @cemetery.phone, state: @cemetery.state, url: @cemetery.url, zip: @cemetery.zip }
    assert_redirected_to cemetery_path(assigns(:cemetery))
  end

  test "should destroy cemetery" do
    assert_difference('Cemetery.count', -1) do
      delete :destroy, id: @cemetery
    end

    assert_redirected_to cemeteries_path
  end
end
