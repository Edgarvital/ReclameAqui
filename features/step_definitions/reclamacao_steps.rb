Given ("Eu estou logado no sistema") do
  visit "usuarios/new"
  expect(page).to have_current_path("/usuarios/new")
  fill_in "login", :with => "login"
  fill_in "senha", :with => "senha"
  fill_in "confirmar_senha", :with => "senha"
  fill_in "nome", :with => "nome"
  click_button "submit"
  expect(page).to have_current_path("/sessions/new")
  fill_in "login", :with => 'login'
  fill_in "senha", :with => 'senha'
  click_button "submit"
end

And("Eu estou na pagina de reclamacoes do usuario") do
  click_on "Reclamações"
  expect(page).to have_content("Reclamações")
  expect(page).to have_current_path('/usuarios/'+ Usuario.last.id.to_s + '/reclamacaos')
end

When ("Eu crio a reclamacao com titulo {string}, texto {string}, categoria {string} e empresa {string}") do |titulo, texto, categoria, empresa|
  click_on "Nova Reclamação"
  expect(page).to have_content("Cadastrar Reclamação")
  fill_in "reclamacao[titulo]", :with => titulo
  fill_in "reclamacao[texto]", :with => texto
  fill_in "reclamacao[categoria]", :with => categoria
  select(empresa, :from => "reclamacao[empresa]")
  click_button "submit"
end

Then ("Eu vejo a reclamacao de titulo {string} e texto {string} na minha pagina de reclamacoes") do |titulo, texto|
  expect(page).to have_content(titulo)
  expect(page).to have_content(texto)
  expect(page).to have_current_path('/usuarios/'+ Usuario.last.id.to_s + '/reclamacaos')
end

Then ("Eu vejo duas mensagens de erro na pagina de nova reclamacao") do
  assert_selector('div#error_explanation', text:'')
  expect(page).to have_current_path('/usuarios/'+ Usuario.last.id.to_s + '/reclamacaos')
end