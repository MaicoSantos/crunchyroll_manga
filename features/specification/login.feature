#language: pt

@Login
Funcionalidade: Login
Para que eu possa logar no app e visualizar a lista de mangás para ler

@Login_Correto
Cenario: Usuário logado

Dado que eu faço login com "mizuharamaico@gmail.com" e "Mizuhara07"
Quando selecionar o botão de Login
Então posso acessar a tela inicial do app

@Login_Incorreto
Esquema do Cenario: Login ou senha incorretos

Dado que eu preencho o login com <email> e <senha> incorretos
Quando selecionar o botão de Login
Então devo ver a mensagem de "Dados de login incorretos." na tela

Exemplos:
| email                     | senha        |
| "gomugomuno@onepiece.com" | "errada"     |
| "mizuharamaico@gmail.com" | "errada"     |
| "gomugomuno@onepiece.com" | "Mizuhara07" |

@Criar_Usuario
Cenario: Criar usuario novo

Dado que eu acesse o botão de criar conta
Quando eu preencher o e-mail e a senha
E Confirmar
Então posso acessar a tela inicial do app