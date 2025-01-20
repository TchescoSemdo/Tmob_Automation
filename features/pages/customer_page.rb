class CustomerPage
    include Capybara::DSL
    include CustomerLocators
  
    def preencher_nome(nome, social_nome)
      find(NAME_INPUT[:id]).set(nome)
      find(SOCIAL_NAME_INPUT[:id]).set(social_nome)
    end
  
    def salvar_cliente
      find(SAVE_BUTTON[:id]).click
    end
  end
  