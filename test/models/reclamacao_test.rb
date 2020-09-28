require 'test_helper'

class ReclamacaoTest < ActiveSupport::TestCase
  test "Criar uma reclamacao valida teste" do
    @reclamacao = Reclamacao.new(titulo:"A empresa1 não responde o contato", texto:"A empresa1 não responde o contato a meses", categoria:"suporte", empresa:"empresa1")
    @usuario = Usuario.new(login:'2424', password_digest:'password', nome:'Edgar')
    assert @usuario.save
   end
end
