# language: pt

@preserve_session
Funcionalidade: Atendimento
  Como usuário logado
  Quero acessar a funcionalidade Atendimento
  E cadastrar um novo cliente

  Cenário: Acessar a funcionalidade Atendimento
    Quando acesso a funcionalidade Atendimento
    Então devo ser redirecionado para a página de Pesquisa de Clientes

  Cenário: Cadastrar um novo cliente
    Quando acesso a funcionalidade Atendimento
    E clico no botão "+ Novo Cliente"
    Então devo ser redirecionado para a página do formulário de novo cliente
