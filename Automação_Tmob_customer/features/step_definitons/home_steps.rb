Given('que estou na página inicial') do
    @home_page = HomePage.new
    visit '/'
  end
  
  When('eu navego para o menu de clientes') do
    @home_page.acessar_menu_clientes
  end
  
  Then('devo ver a saudação {string}') do |mensagem|
    expect(@home_page.saudacao_presente?(mensagem)).to be true
  end
  
  When('eu realizo o logout') do
    @home_page.realizar_logout
  end
  
  Then('devo ser redirecionado para a página de login') do
    expect(page).to have_current_path('/login')
  end
  