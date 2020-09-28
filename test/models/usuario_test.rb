require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  test 'criar um usuario valido teste' do
    @usuario = Usuario.new(login:'2424', password_digest:'password', nome:'Edgar')
    assert @usuario.save
  end

  test 'O login de um usuário deve ser unico' do
    @usuario1 = Usuario.new(login:'2424', password_digest:'password', nome:'Edgar')
    @usuario2 = Usuario.new(login:'2424', password_digest:'password', nome:'Edgar')
    @usuario1.save
    assert_not @usuario2.sav
  end

end
