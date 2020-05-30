Dado("que eu faço login com {string} e {string}") do |email, senha|
  @screen.login.button_initial_login
  @screen.login.login(email, senha)
end

Quando("selecionar o botão de Login") do
  @screen.login.button_login
end

Então("posso acessar a tela inicial do app") do
  logado = @screen.login.tela_inicial
  expect(logado).to be true
end

Dado("que eu preencho o login com {string} e {string} incorretos") do |email, senha|
  @screen.login.button_initial_login
  @screen.login.login(email, senha)
end

Então("devo ver a mensagem de {string} na tela") do |mensagem|
  @screen.login.menssagem_erro(mensagem)
end

Dado("que eu acesse o botão de criar conta") do
  @screen.login.create_account
end

Quando("eu preencher o e-mail e a senha") do
  email = Faker::Name.first_name + Faker::Internet.free_email
  senha = Faker::Internet.password
  @screen.login.fill_account(email, senha)
end

Quando("Confirmar") do
  @screen.login.sign_up
end
