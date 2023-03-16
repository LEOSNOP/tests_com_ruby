#language: pt


@busca_feature
Funcionalidade: Busca de produtos

    Como um usuário na pagina da Americanas
    quero fazer a busca por um produto 
    e validar o retorno dessa busca

    @caminho1
    Esquema do Cenario: busca por produtos validos
    Dado que o usuario acessa a Americanas
    Quando o usuario faz busca de um <produto_valido>
    Entao o sistema verifica o resultado da busca valida

    Exemplos: lista de busca de produtos validos
    |produto_valido |
    |"Xbox series s"|
    |"jbl boombox"   |
    |"rtx 3060"     |
    
    @caminho2
    Esquema do Cenario: busca por produtos invalidos
    Dado que o usuario acessa a Americanas
    Quando o usuario faz busca de um <produto_invalido>
    Entao o sistema verifica o resultado invalido
    
    Exemplos: lista de busca de produtos invalidos
    |produto_invalido      |
    |"80590sd0a9sf09sas09f"|
    |"55asdakfr3"          |
    |"23441252"            |

    @caminho3
    Esquema do Cenario: busca generica 
    Dado que o usuario acessa a Americanas
    Quando o usuario faz busca de um <produto_generico>
    Entao o sistema verifica o resultado do produto generico

    Exemplos: lista de produtos genericos
    |produto_generico |
    |"fone de ouvido "|
    |"camera"         |
    |"mouse"          |

    @caminho4
    Cenario: busca vazia
    Dado que o usuario acessa a Americanas
    Quando o usuario faz uma busca " "
    Entao o sistema permanece na pagina
