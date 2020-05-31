#language: pt

@PesquisaManga
Funcionalidade: Pesquisar Mangá
Para que eu possa encontrar o mangá que desejo ler posso 
pesquisar o mesmo pelo nome ou fazer filtro de pesquisas 
por demografia e/ou gênero

@Logado @Pesquisa_Manga_existente
Cenario: Pesquisa mangá existente no catálogo por nome

Dado que acesse a guia de pesquisa de manga por nome
Quando pesquisar o manga de "attack on titan" no catálogo
Então o app deve listar o manga para que eu possa acessa-lo

@Logado @Pesquisa_Manga_inexistente
Cenario: Pesquisa mangá inexistente no catálogo por nome

Dado que acesse a guia de pesquisa de manga por nome
Quando pesquisar o manga de "one piece" no catálogo
Então o app não deve listar o manga

@Logado @Visualizacao
Esquema do Cenario: Exibição de catálogo em lista ou grid

Dado que eu acesse a tela inicial do app
Quando selecionar o icone de vizualizacao por <tipo>
Então o app deve alterar a visualizacao para <visualizacao>

Exemplos: 
| tipo     | visualizacao |
| "lista"  | "list"       |
| "grade"  | "grid"       |
