require 'test_helper'

class VypujckasControllerTest < ActionController::TestCase
  setup do
    @vypujcka = vypujckas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vypujckas)
  end

  test "should create vypujcka" do
    assert_difference('Vypujcka.count') do
      post :create, vypujcka: { cislo_smlouvy: @vypujcka.cislo_smlouvy, datumdo: @vypujcka.datumdo, datumod: @vypujcka.datumod, faktura_id: @vypujcka.faktura_id, misto_predani: @vypujcka.misto_predani, najemce_id: @vypujcka.najemce_id, platba_fakturou: @vypujcka.platba_fakturou, platba_hotove: @vypujcka.platba_hotove, zaloha: @vypujcka.zaloha, zarizeni_id: @vypujcka.zarizeni_id }
    end

    assert_response 201
  end

  test "should show vypujcka" do
    get :show, id: @vypujcka
    assert_response :success
  end

  test "should update vypujcka" do
    put :update, id: @vypujcka, vypujcka: { cislo_smlouvy: @vypujcka.cislo_smlouvy, datumdo: @vypujcka.datumdo, datumod: @vypujcka.datumod, faktura_id: @vypujcka.faktura_id, misto_predani: @vypujcka.misto_predani, najemce_id: @vypujcka.najemce_id, platba_fakturou: @vypujcka.platba_fakturou, platba_hotove: @vypujcka.platba_hotove, zaloha: @vypujcka.zaloha, zarizeni_id: @vypujcka.zarizeni_id }
    assert_response 204
  end

  test "should destroy vypujcka" do
    assert_difference('Vypujcka.count', -1) do
      delete :destroy, id: @vypujcka
    end

    assert_response 204
  end
end
