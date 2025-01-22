
class AtendimentoPage
  include Capybara::DSL
  include AtendimentoLocators

  def acessar_atendimento
    find(ATENDIMENTO_BTN[:xpath]).click
  end

  def validar_pesquisa_de_clientes
    has_selector?(PESQUISA_DE_CLIENTES_HEADER[:text])
  end

  def clicar_novo_cliente
    find(NOVO_CLIENTE_BTN[:css], text: NOVO_CLIENTE_BTN[:text]).click
  end

  def validar_formulario_novo_cliente
    has_selector?(FORMULARIO_NOVO_CLIENTE_HEADER[:text])
  end
end
