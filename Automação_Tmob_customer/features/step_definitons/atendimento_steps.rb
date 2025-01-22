
When('acesso a funcionalidade Atendimento') do
  atendimento_page = AtendimentoPage.new
  atendimento_page.acessar_atendimento
end

Then('devo ser redirecionado para a página de Pesquisa de Clientes') do
  expect(page).to have_content('Pesquisa de Clientes', wait: 5)
end

When('clico no botão "+ Novo Cliente"') do
  atendimento_page = AtendimentoPage.new
  atendimento_page.clicar_novo_cliente
end

Then('devo ser redirecionado para a página do formulário de novo cliente') do
  expect(page).to have_content('Cadastro de Cliente', wait: 5)
end


