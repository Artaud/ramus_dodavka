require 'test_helper'

class FakturasControllerTest < ActionController::TestCase
  setup do
    @faktura = fakturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fakturas)
  end

  test "should create faktura" do
    assert_difference('Faktura.count') do
      post :create, faktura: { castka: @faktura.castka, cislo: @faktura.cislo, datum: @faktura.datum, najemce_id: @faktura.najemce_id, prijata: @faktura.prijata, ucel: @faktura.ucel, vydana: @faktura.vydana }
    end

    assert_response 201
  end

  test "should show faktura" do
    get :show, id: @faktura
    assert_response :success
  end

  test "should update faktura" do
    put :update, id: @faktura, faktura: { castka: @faktura.castka, cislo: @faktura.cislo, datum: @faktura.datum, najemce_id: @faktura.najemce_id, prijata: @faktura.prijata, ucel: @faktura.ucel, vydana: @faktura.vydana }
    assert_response 204
  end

  test "should destroy faktura" do
    assert_difference('Faktura.count', -1) do
      delete :destroy, id: @faktura
    end

    assert_response 204
  end
end
