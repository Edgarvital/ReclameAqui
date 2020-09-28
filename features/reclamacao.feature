Feature:Reclamacao
  As a usuario do ReclameAqui
  i want to adicionar, remover, editar e visualizar uma reclamacão
  so that outros usuarios logados ou nao, possam visualizar minhas reclamacões

  Scenario: Criar uma nova Reclamacao
    Given Eu estou logado no sistema
    And Eu estou na pagina de reclamacoes do usuario
    When Eu crio a reclamacao com titulo 'empresa1 nao responde o suporte', texto 'Enviei uma mensagem de suporte para empresa1 e nao fui respondido', categoria 'Suporte' e empresa 'Empresa1'
    Then Eu vejo a reclamacao de titulo 'empresa1 nao responde o suporte' e texto 'Enviei uma mensagem de suporte para empresa1 e nao fui respondido' na minha pagina de reclamacoes
