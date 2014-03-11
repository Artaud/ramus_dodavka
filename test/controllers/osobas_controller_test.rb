require 'test_helper'

class OsobasControllerTest < ActionController::TestCase
  setup do
    @osoba = osobas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:osobas)
  end

  test "should create osoba" do
    assert_difference('Osoba.count') do
      post :create, osoba: { cislodomu: @osoba.cislodomu, jmeno: @osoba.jmeno, mesto: @osoba.mesto, prijmeni: @osoba.prijmeni, smerovacicislo: @osoba.smerovacicislo, telefon: @osoba.telefon, ulice: @osoba.ulice }
    end

    assert_response 201
  end

  test "should show osoba" do
    get :show, id: @osoba
    assert_response :success
  end

  test "should update osoba" do
    put :update, id: @osoba, osoba: { cislodomu: @osoba.cislodomu, jmeno: @osoba.jmeno, mesto: @osoba.mesto, prijmeni: @osoba.prijmeni, smerovacicislo: @osoba.smerovacicislo, telefon: @osoba.telefon, ulice: @osoba.ulice }
    assert_response 204
  end

  test "should destroy osoba" do
    assert_difference('Osoba.count', -1) do
      delete :destroy, id: @osoba
    end

    assert_response 204
  end
end
