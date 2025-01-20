Given('que estou na página de cadastro de clientes') do
    @customer_page = CustomerPage.new
    visit '/customers/new'
  end
  
  When('eu preencho os dados do cliente com {string} e {string}') do |nome, social_nome|
    @customer_page.preencher_nome(nome, social_nome)
  end
  
  And('eu clico no botão de salvar') do
    @customer_page.salvar_cliente
  end
  
  Then('o cliente deve ser salvo com sucesso') do
    expect(page).to have_content('Cliente salvo com sucesso')
  end
  