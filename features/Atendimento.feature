# language: pt

@preserve_session
Funcionalidade: Atendimento
  Como usuário logado
  Quero acessar a tela "+ Novo Cliente"
  Para cadastrar um novo cliente

  Cenário: Acessar "+ Novo Cliente"
    Dado que estou na página inicial
    Quando clico no botão "+ Novo Cliente"
    Então devo ser redirecionado para a página de cadastro de cliente
