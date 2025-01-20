class HomePage
    include Capybara::DSL
    include HomeLocators
  
    def acessar_menu_clientes
      find(MENU_CLIENTES[:css]).click
    end
  
    def realizar_logout
      find(BOTAO_LOGOUT[:id]).click
    end
  
    def saudacao_presente?(mensagem)
      has_css?(SAUDACAO_USUARIO[:css], text: mensagem)
    end
  end
  