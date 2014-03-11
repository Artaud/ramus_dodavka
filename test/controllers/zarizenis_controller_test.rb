require 'test_helper'

class ZarizenisControllerTest < ActionController::TestCase
  setup do
    @zarizeni = zarizenis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zarizenis)
  end

  test "should create zarizeni" do
    assert_difference('Zarizeni.count') do
      post :create, zarizeni: { evidencni_cislo: @zarizeni.evidencni_cislo, nazev: @zarizeni.nazev, vypujceno: @zarizeni.vypujceno }
    end

    assert_response 201
  end

  test "should show zarizeni" do
    get :show, id: @zarizeni
    assert_response :success
  end

  test "should update zarizeni" do
    put :update, id: @zarizeni, zarizeni: { evidencni_cislo: @zarizeni.evidencni_cislo, nazev: @zarizeni.nazev, vypujceno: @zarizeni.vypujceno }
    assert_response 204
  end

  test "should destroy zarizeni" do
    assert_difference('Zarizeni.count', -1) do
      delete :destroy, id: @zarizeni
    end

    assert_response 204
  end
end
