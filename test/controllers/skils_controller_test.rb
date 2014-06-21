require 'test_helper'

class SkilsControllerTest < ActionController::TestCase
  setup do
    @skil = skils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skil" do
    assert_difference('Skil.count') do
      post :create, skil: { level: @skil.level, name: @skil.name }
    end

    assert_redirected_to skil_path(assigns(:skil))
  end

  test "should show skil" do
    get :show, id: @skil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skil
    assert_response :success
  end

  test "should update skil" do
    patch :update, id: @skil, skil: { level: @skil.level, name: @skil.name }
    assert_redirected_to skil_path(assigns(:skil))
  end

  test "should destroy skil" do
    assert_difference('Skil.count', -1) do
      delete :destroy, id: @skil
    end

    assert_redirected_to skils_path
  end
end
