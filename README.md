# Tests com Ruby 

Projeto feito com os seguintes componentes: 

-Capybara 	-Ruby 	

-VsCode		-Selenium	

-SitePrism	-Cucumber(gherkin)


Se quiser conferir melhor tudo que foi usado no projeto esta no Arquivo (Gemfile)

# Objetivo dos testes

O objetivo veio desse desafio:

Requisitos
1-Entre em um grande portal de comércio online
(Exemplo: Americanas, Submarino, Magazine Luiza)
2- Faça uma busca por um produto
3- Valide o retorno da busca
4- Escolha um produto na lista
5- Adicione o carrinho
6- Valide o produto no carrinho

# Como configurar o ambiente

- Primeiro instalar todas as gems que vamos usar

para instalar as gems use o comando: (gem install nome-da-gem)

Gems que foram usadas: bundle, cucumber

- Segundo 

Depois de ter instalado as gems citadas anteriormente,

no terminal dentro da pasta do projeto deve ser digitado
o comando: (cucumber --init)

Este comando vai criar as pastas do projeto.

Dentro da pasta do Projeto(NÃO é Dentro da Pasta features), tem que criar o arquivo Gemfile(onde vai estar todas as gems que precisamos pro projeto)

depois de ter criado o arquivo, coloque todas as gems que vao ser usadas e no terminal digite o seguinte comando: bundle install 

com este comando todas as gems que estiverem dentro do arquivo Gemfile vão ser instaladas 

após isso tudo pronto para começar o projeto.

# Features

com base nos Requisitos começei a fazer as features, que no caso são duas, uma para busca, e outra para o carrinho de compras.

-Feature da busca

Funcionalidade: Busca de produtos
    Como um usuário na pagina da Americanas
    quero fazer a busca por um produto 
    e validar o retorno dessa busca

-Feature do carrinho

Funcionalidade: Adicionando ao carrinho
    como um usuario quero acessar a Magazine Luiza
    fazer a busca por um produto 
    e adicionar o produto ao carrinho

obs:(nos testes do carrinho tentei fazer na americanas, porem na americanas nao estava passando os tests porque ficava entrando na pagina de decção de robo e esta detecção é bugada.)

Com isso comecei a fazer os cenarios

Cenario da Busca

1-Cenario busca - valida 

2- Cenario busca - invalida

3- Cenario busca - generica

4- Cenario busca - em branco

Cenario do Carrinho de Compras

1- Cenario Carrinho - adicionar ao carrinho

2- Cenario Carrinho - clica no produto sem adicionar ao carrinho

3- Cenario Carrinho - adiciona ao carrinho e tira o item do carrinho

#PageObjects

Antes de começar a fazer os PageObjects comecei a configurar os steps e cenarios quando isso foi concluido

Comecei a fazer os PageObjects que estão na pasta features/step_definitions

Ordem de desenvolvimento da pages 

1- buscaPage 

2- carrinhoPage 

# Relatorios 

Os relatorios são feitos em Html e tambem por Screenshot 

As screenshots ficam armazenadas na pasta (screenshots), e o relatorio em HTML fica armazenado na pasta (reports)

No arquivo cucumber.yml é onde o relatorio em HTML é exigido 

Os metodos das Screenshots estao na pasta (features/support/helper.rb)

# Conclusão 

Este projeto foi feito com todos os conhecimentos que aprendi no curso da Udemy: Automação de testes com Capybara, cucumber e ruby 

interessante que aprendi bastante com os erros que deram até chegar na versão em que tudo esta funcionando. 
