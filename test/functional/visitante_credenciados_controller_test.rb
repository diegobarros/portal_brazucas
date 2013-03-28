require 'test_helper'

class VisitanteCredenciadosControllerTest < ActionController::TestCase
  setup do
    @visitante_credenciado = visitante_credenciados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visitante_credenciados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visitante_credenciado" do
    assert_difference('VisitanteCredenciado.count') do
      post :create, visitante_credenciado: { cpf: @visitante_credenciado.cpf, nascimento: @visitante_credenciado.nascimento, nome: @visitante_credenciado.nome, sexo: @visitante_credenciado.sexo, sobrenome: @visitante_credenciado.sobrenome, telefone: @visitante_credenciado.telefone }
    end

    assert_redirected_to visitante_credenciado_path(assigns(:visitante_credenciado))
  end

  test "should show visitante_credenciado" do
    get :show, id: @visitante_credenciado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visitante_credenciado
    assert_response :success
  end

  test "should update visitante_credenciado" do
    put :update, id: @visitante_credenciado, visitante_credenciado: { cpf: @visitante_credenciado.cpf, nascimento: @visitante_credenciado.nascimento, nome: @visitante_credenciado.nome, sexo: @visitante_credenciado.sexo, sobrenome: @visitante_credenciado.sobrenome, telefone: @visitante_credenciado.telefone }
    assert_redirected_to visitante_credenciado_path(assigns(:visitante_credenciado))
  end

  test "should destroy visitante_credenciado" do
    assert_difference('VisitanteCredenciado.count', -1) do
      delete :destroy, id: @visitante_credenciado
    end

    assert_redirected_to visitante_credenciados_path
  end
end
