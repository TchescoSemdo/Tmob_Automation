class LoginPage
  include Capybara::DSL
  include LoginLocators

  def preencher_credenciais(campos)
    campos.each do |campo, valor|
      case campo
      when 'E-mail'
        find(EMAIL_INPUT[:css]).set(valor)
      when 'Senha'
        find(PASSWORD_INPUT[:css]).set(valor)
      end
    end
  end

  def clicar_login
    find(LOGIN_BUTTON[:css]).click
  end

  def mensagem_erro_presente?(mensagem)
    has_css?(ERROR_MESSAGE[:css], text: mensagem)
  end
end
