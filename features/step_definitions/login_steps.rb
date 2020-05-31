Dado("que eu faço login com {string} e {string}") do |email, password|
  @screen.login.button_initial_login
  @screen.login.login(email, password)
end

Quando("selecionar o botão de Login") do
  @screen.login.button_login
end

Então("posso acessar a tela inicial do app") do
  logado = @screen.login.screen_initial
  expect(logado).to be true
end

Dado("que eu preencho o login com {string} e {string} incorretos") do |email, password|
  @screen.login.button_initial_login
  @screen.login.login(email, password)
end

Então("devo ver a mensagem de {string} na tela") do |mensagem|
  @screen.login.error_message(mensagem)
end

Dado("que eu acesse o botão de criar conta") do
  @screen.login.create_account
end

Quando("eu preencher o e-mail e a senha") do
  email = Faker::Name.first_name + Faker::Internet.free_email
  password = Faker::Internet.password
  @screen.login.fill_account(email, password)
end

Quando("Confirmar") do
  @screen.login.sign_up
end
