Given ("Eu estou na pagina de cadastro") do
  visit "usuarios/new"
  expect(page).to have_current_path("/usuarios/new")
end

When('Eu crio um usuario com login {string}, senha {string}, confirmacao de senha {string} e nome {string}') do |login, senha, confirm_senha, nome|
  fill_in "login", :with => login
  fill_in "senha", :with => senha
  fill_in "confirmar_senha", :with => confirm_senha
  fill_in "nome", :with => nome
  click_button "submit"
end

Then ('Eu vejo a tela de login') do
  expect(page).to have_current_path("/sessions/new")
end
