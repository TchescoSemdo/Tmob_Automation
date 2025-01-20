# language: pt

Funcionalidade: Página Inicial
  Como um usuário autenticado
  Eu quero acessar a página inicial
  Para navegar no sistema ou sair da minha conta

  Cenário: Acessar menu de Atendimento
    Dado que estou na página inicial
    Quando Navego para funcionalidade de Atendimento
    Então devo ser redirecionado para a página de Atendimento

  Cenário: Ver saudação personalizada
    Dado que estou na página inicial
    Então devo ver a saudação "Bem-vindo, Usuário!"

  Cenário: Realizar logout
    Dado que estou na página inicial
    Quando eu realizo o logout
    Então devo ser redirecionado para a página de login
