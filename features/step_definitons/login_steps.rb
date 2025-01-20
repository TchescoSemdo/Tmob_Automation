Given('que estou na página de login') do 
  @login_page = LoginPage.new
  visit ''
 
end

When('eu preencho as credenciais com:') do |table|
  campos = table.rows_hash
  @login_page.preencher_credenciais(campos)
  sleep 5
end

When('eu clico no botão de login') do
  @login_page.clicar_login
  sleep 5
end

Then('devo ver na tela {string}') do |mensagem|
  expect(page).to have_content(mensagem)
end

Then('devo ver a mensagem {string}') do |mensagem|
  expect(@login_page.mensagem_erro_presente?(mensagem)).to be true
end
