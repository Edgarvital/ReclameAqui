require 'test_helper'

class ReclamacaoTest < ActiveSupport::TestCase
  test "Criar uma reclamacao valida teste" do
    @reclamacao = Reclamacao.new(titulo:"A empresa1 não responde o contato", texto:"A empresa1 não responde o contato a meses", categoria:"suporte", empresa:"empresa1")
    @usuario = Usuario.new(login:'2424', password_digest:'password', nome:'Edgar')
    @usuario.reclamacaos << @reclamacao
    assert @usuario.save
  end

  test "O texto de uma reclamacao deve ter no minimo 10 caracteres" do
    @reclamacao = Reclamacao.new(titulo:"A empresa1 não responde o contato", texto:"A", categoria:"suporte", empresa:"empresa1")
    @usuario = Usuario.new(login:'2425', password_digest:'password', nome:'Edgar')
    @usuario.reclamacaos << @reclamacao
    assert_not @usuario.save
  end
end
