require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  test 'criar um usuario teste' do
    @usuario = Usuario.new(login:'2424', password_digest:'password', nome:'Edgar')
    assert @usuario.save
  end

end
