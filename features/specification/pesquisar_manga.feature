#language: pt

Funcionalidade: Pesquisar Mangá
Para que eu possa encontrar o mangá que desejo ler posso 
pesquisar o mesmo pelo nome ou fazer filtro de pesquisas 
por demografia e/ou gênero

@Free @Pesquisa_Manga
Cenario: Pesquisa mangá existente no catálogo por nome

Dado que acesse a guia de pesquisa de manga por nome
Quando digitar o manga de "attack on titan" existente no catálogo
Então o app deve listar o manga para que eu possa acessa-lo

@Free @Pesquisa_Manga_inexistente
Cenario: Pesquisa mangá inexistente no catálogo por nome

Dado que acesse a guia de pesquisa de manga por nome
Quando digitar o manga de "one piece" inexistente no catálogo
Então o app não deve listar o manga

@Free @visualizacao
Esquema do Cenario: Exibição de catálogo em lista ou grid

Dado que acesse a tela inicial do app
Quando selecionar o icone de vizualizacao por <tipo>
Então o app deve alterar a visualizacao para <visualizacao>

Exemplos: 
    | tipo    | visualizacao |
    | "lista" | "list"       |
    | "grid"  | "grid"       |
