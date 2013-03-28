require 'test_helper'

class AnunciantesControllerTest < ActionController::TestCase
  setup do
    @anunciante = anunciantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anunciantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anunciante" do
    assert_difference('Anunciante.count') do
      post :create, anunciante: { cnpj: @anunciante.cnpj, nome: @anunciante.nome, razao_social: @anunciante.razao_social, telefone: @anunciante.telefone, url_website: @anunciante.url_website }
    end

    assert_redirected_to anunciante_path(assigns(:anunciante))
  end

  test "should show anunciante" do
    get :show, id: @anunciante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anunciante
    assert_response :success
  end

  test "should update anunciante" do
    put :update, id: @anunciante, anunciante: { cnpj: @anunciante.cnpj, nome: @anunciante.nome, razao_social: @anunciante.razao_social, telefone: @anunciante.telefone, url_website: @anunciante.url_website }
    assert_redirected_to anunciante_path(assigns(:anunciante))
  end

  test "should destroy anunciante" do
    assert_difference('Anunciante.count', -1) do
      delete :destroy, id: @anunciante
    end

    assert_redirected_to anunciantes_path
  end
end
