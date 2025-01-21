class CustomerPage
  include Capybara::DSL
  include AtendimentoLocators
  include HometoLocatorsLocators

  
  def clicar_botao(botao)
    case botao
    when '+ Novo Cliente'
      find(ATENDIMENTO_BTN[:class]).click
    end

  def clicar_botao(botao)
    case botao
    when '+ Novo Cliente'
      find(NOVO_CLIENTE_BTN[:class]).click
    end
  end
  
  
  
end
