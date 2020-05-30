Dado("que acesse a guia de pesquisa de manga por nome") do
  @screen.manga.search_icon
end

Quando("pesquisar o manga de {string} no catálogo") do |manga|
  @manga = manga
  @screen.manga.search_manga(@manga)
end

Então("o app deve listar o manga para que eu possa acessa-lo") do
  @screen.manga.access_manga(@manga)
end

Então("o app não deve listar o manga") do
    expect(@screen.manga.access_manga(@manga)).to be false
  end
  
  Dado("que eu acesse a tela inicial do app") do
    steps %(
        Então posso acessar a tela inicial do app
    )
  end
  
  Quando("selecionar o icone de vizualizacao por {string}") do |tipo|
    @screen.manga.select_icon_view(tipo)
  end
  
  Então("o app deve alterar a visualizacao para {string}") do |view|
    expect(@screen.manga.manga_view(view)).to be true
  end
  