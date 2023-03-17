#language: pt

@carrinho_de_compras
Funcionalidade: Adicionando ao carrinho

    como um usuario quero acessar a Magazine Luiza
    fazer a busca por um produto 
    e adicionar o produto ao carrinho

     Contexto: entrando na Magazine e fazendo a busca
      Dado que o usuario acessa o site da Magazine
      Quando o usuario faz a busca por "headset hyperx"
      Entao o sistema verifica o resultado da busca

    @caminho1
    Cenario: caminho padrao
      Dado que o usuario seleciona o produto
      Quando o usuario adicionar o produto ao carrinho
      Entao o sistema verifica se o produto foi adicionado ao carrinho

    @caminho2
    Cenario: adiciona ao carrinho e exclui
      Dado que o usuario adiciona o produto ao carrinho
      Quando o usuario excluir o produto do carrinho
      Entao o sistema verifica se o produto foi tirado do carrinho

    @caminho3
    Cenario: clica no produto e nao adiciona no carrinho
      Dado que o usuario seleciona o produto
      Quando o usuario visualisa o produto e nao adiciona ao carrinho
      Entao o sistema verifica se algo foi adicionado ao carrinho