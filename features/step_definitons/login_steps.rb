Given('que estou na página de login') do 
  @login_page = LoginPage.new
  visit '/'
  sleep 5
  puts
end

When('eu preencho as credenciais com:') do |table|
  campos = table.rows_hash
  @login_page.preencher_credenciais(campos) # Converte a tabela em um hash { 'Email' => 'teste@qa.com', 'Senha' => 'senha123' }
  puts
end

When('eu clico no botão de login') do
  @login_page.clicar_login
  puts
end

Then('devo ver na tela {string}') do |mensagem|
  expect(page).to have_content(mensagem)
  sleep 5
  puts
end





Quando('clico no botão de login') do
  @login_page.clicar_login
end