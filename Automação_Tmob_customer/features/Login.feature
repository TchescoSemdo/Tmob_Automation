# language: pt

@preserve_session
Funcionalidade: Login
  Como usuário
  Quero entrar no sistema
  Para acessar o painel

  Cenário: Login com sucesso
    Dado que estou na página de login
    Quando eu preencho as credenciais com:

      | Campo  | Valor                               |
      | Email  | Francisco.carvalho@tecsomobi.com.br |
      | Senha  | 3)Ek2M)cGu\8                        |
    E eu clico no botão de login
    Então devo ver na tela "Seja bem-vindo! O que vamos fazer hoje?"
