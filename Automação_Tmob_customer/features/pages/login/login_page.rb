class LoginPage
  include Capybara::DSL
  include LoginLocators

  def preencher_credenciais(campos)
    puts "Campos recebidos: #{campos}"
    campos.each do |campo, valor|
      puts "Campo: #{campo}, Valor: #{valor}"
      case campo
      when 'Email'
        find(EMAIL_INPUT[:class]).set(valor) 
      when 'Senha'
        find(PASSWORD_INPUT[:class]).set(valor) 
      end
    end
  end
  

  def clicar_login
    find(LOGIN_BUTTON[:class]).click
  end
end