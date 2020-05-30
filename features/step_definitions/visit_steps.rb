Dado("que eu inicie a vista no shopping desejado") do
  @screen.home.iniciar_visita
  @screen.visit.busca_shopping("Brasília Shopping")
end

Quando("selecionar o evento de comercializado") do
  @screen.visit.comercializado
end

Quando("informo a {string}, o {string} e a {string}") do |loja, status, piso|
  @screen.visit.busca_loja(loja)
  @screen.visit.status_loja(status)
  @screen.visit.localizacao(piso)
end

Quando("Adiciono uma foto e uma observação") do
  # Appium::TouchAction.new.swipe(start_x: 144, start_y: 1634, end_x: 144, end_y: 149).perform
  # @screen.visit.adicionar_foto("Legenda da foto")
  # @screen.visit.adicionar_observacao("Observação")
end

Quando("Finalizo a visita") do
  Appium::TouchAction.new.swipe(start_x: 144, start_y: 1634, end_x: 144, end_y: 149).perform
  @screen.visit.finalizar
end

Então("a visita será registrada com sucesso") do
  @screen.visit.evento_adicionado_sucesso
end
