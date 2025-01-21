Given('que estou na página inicial') do
  @atendimento_page = atendimentoPage.new
 end

When('clico no botão {string}') do |botao|
  @atendimento_page.clicar_botao(botao)
end

Then('devo ser redirecionado para a página de cadastro de cliente') do
  expect(page).to have_content('Cadastro de Cliente')
end

When('clico no botão {string}') do |botao|
  @atendimento_page.clicar_botao(botao)
end
