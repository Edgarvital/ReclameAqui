Feature:Usuario
  As a usuario nao logado do ReclameAqui
  I want to cadastrar, alterar e visualizar um usuario
  so that eu possa adicionar, remover, editar e visualizar uma reclamacao

  Scenario: Cadastrar usuario
    Given Eu estou na pagina de cadastro
    When Eu crio um usuario com login 'edgar', senha 'password', confirmacao de senha 'password' e nome 'Edgar'
    Then Eu vejo a tela de login
