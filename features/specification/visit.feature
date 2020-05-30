#language: pt
@visita
Funcionalidade: Visita
Função para que possa ser lançado os tapumes comercializados e não comerciados dos shoppings visitados

@logado @comercializado
Esquema do Cenario: Realizar visita comercializado

Dado que eu inicie a vista no shopping desejado
Quando selecionar o evento de comercializado
E informo a <loja>, o <status> e a <piso>
E Adiciono uma foto e uma observação
E Finalizo a visita
Então a visita será registrada com sucesso

Exemplos: 
    | loja               | status       | piso       |
    | "adidas originals" | "Nova"       | "G1"       |
    | "polo club"        | "Reforma"    | "G2"       |
    | "game house"       | "Realocada"  | "Piso 1"   |
    | "game station"     | "Inaugurada" | "Piso 2"   |