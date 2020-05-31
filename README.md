# crunchyroll_manga
Automação do app de leitura de mangás da crunchyroll

##  Criador
 - [Maico Santos](https://github.com/MaicoSantos)

### Instalação e Pré-Requisitos

Pré-requisitos:
- Appium
- Virtual Device (Android Studio/Genimotion ou qualquer outro de sua preferencia)
- Vscode
- Ruby - 2.3.1 ou superior
- Git
- Apk (Arquivo de execução do app)
- Gem Bundler

Instalar o Appium e Android Studio:
Para instalação do appium vc pode seguir os tutuoriais nos links abaixo:
 - `https://medium.com/qaninja/configurando-o-ambiente-para-executar-o-appium-788eb0002ce9`
 - `https://stackoverflow.com/questions/25605445/how-to-install-and-run-appium-in-linux`
 - Appium Desktop - `https://github.com/appium/appium-desktop`

Genymotion:
O Genymotion é uma ferramenta paga, porém tem sua versão free de uso pessoal que pode ser baixada, prefiro utilizar ele pois é muito mais leve que o Android Studio para executar o Virtual Device.
 - `https://www.genymotion.com/fun-zone/`
 - `https://www.genymotion.com/download/`

Instalar Ruby
segue abaixo link para instalação do ruby
 - `https://www.ruby-lang.org/pt/documentation/installation/`

## Configurar arquivo Appium.txt
O arquivo Appium.txt é um dos mais importantes pois é nele que vamos definir as configurações para a execução do app no vistual device e assim poder executar os testes

### Appium Desired Capabilities:
[caps]
platformName = "Android"
deviceName = "VirtualDevice"
udid = "192.168.63.101:5555"
app = "https://drive.google.com/uc?export=download&id=1SMkv7hfHys0i3MncANJ_zkCg50VTTscm"
appPackage = "com.crunchyroll.crmanga"
autoGrantPermissions = true
locationServicesAuthorized = true
locationServicesEnabled = true
automationName = "uiautomator2"

[platformName] - Plataforma na qual vamos utilizar se é Android ou IOs
[deviceName] - Nome do Device que vamos utilizar
[udid] - é o ID do device que vamos utilizar, para obter esse numero temos de abrir o virtual device e executar no terminal o comando `adb devices` ele vai mostrar o id do device
[app] - é o local onde se encontra o arquivo do app o `.apk`, pode se passar o caminho da pasta local onde está o arquivo ou até mesmo um link online de onde o mesmo se encontra para baixar

Para mais detalhes dos Capabilities segue o link abaixo
`http://appium.io/docs/en/writing-running-appium/caps/`

### BAIXAR O PROJETO NO GITHUB

Se não tiver o projeto na máquina, navegue até a pasta que deseja criar:
- `git clone https://github.com/MaicoSantos/crunchyroll_manga.git` ou
- `git clone git@github.com:MaicoSantos/crunchyroll_manga.git`

Se já tiver o projeto na máquina, navegue até a pasta do projeto:
- `git pull origin master`

Após baixar o projeto é só navegar no terminal até a pasta e executar os comandos abaixo para instalar as dependências
1. `gem install bundler` (no cmd) - Instalar o gerenciador de dependências
2. `bundle install` - instalar as dependências do Gemfile

### EXECUTAR O PROJETO

1. Appium server
Abrir o terminal e digitar o comando `appium` ou abrir o `appium Desktop` e executar o server por ele, independente de onde seja iniciado espere o server startar ele deve apresentar uma mensagem semelhante a essa:
[Appium] Welcome to Appium v1.16.0
[Appium] Appium REST http interface listener started on 0.0.0.0:4723

OBS: Não feche o terminal que está com o server do appium executando

2. Virtual Device
Abra o Virtual Device e espere o mesmo carregar as configurações iniciais do android oi IOs

3. Executar os testes
Na pasta do seu projeto executar:
- `cucumber`
- `cucumber -t @tag` (para executar apenas uma feature com a tag específica)

### TESTES

`cucumber -t @Login` = executa todos os testes da feature de Login

`cucumber -t @@Login_Correto` = Valida o Login com sucesso no app utilizando um usuario e senha corretos

`cucumber -t @Login_Incorreto` = Valida uma tentativa de Login incorreta utilizando um usuario e senha errados

`cucumber -t @Criar_Usuario` = Valida a criação de uma conta nova para acessar o app


`cucumber -t @PesquisaManga` = executa todos os testes da feature de Pesquisa de Mangás

`cucumber -t @Pesquisa_Manga_existente` = Pesquisa uma mangá existente no catálogo pelo nome e acessa a tela principal do mesmo

`cucumber -t @Pesquisa_Manga_inexistente` = Pesquisa um mangá inexistente no catálogo pelo nome e valida que a listagem do mesmo não existe

`cucumber -t @Visualizacao` = Seleciona os botões de vizualição da lista de mangás por 2 tipos, Lista e Grade e valida que o layout alterou os mesmos de forma correta.
