require 'test_helper'

class NajemcesControllerTest < ActionController::TestCase
  setup do
    @najemce = najemces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:najemces)
  end

  test "should create najemce" do
    assert_difference('Najemce.count') do
      post :create, najemce: { cisloop: @najemce.cisloop, cislorp: @najemce.cislorp, ico: @najemce.ico, nazevfirmy: @najemce.nazevfirmy, osoba_id: @najemce.osoba_id }
    end

    assert_response 201
  end

  test "should show najemce" do
    get :show, id: @najemce
    assert_response :success
  end

  test "should update najemce" do
    put :update, id: @najemce, najemce: { cisloop: @najemce.cisloop, cislorp: @najemce.cislorp, ico: @najemce.ico, nazevfirmy: @najemce.nazevfirmy, osoba_id: @najemce.osoba_id }
    assert_response 204
  end

  test "should destroy najemce" do
    assert_difference('Najemce.count', -1) do
      delete :destroy, id: @najemce
    end

    assert_response 204
  end
end
