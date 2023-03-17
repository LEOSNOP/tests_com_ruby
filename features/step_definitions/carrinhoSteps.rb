Dado('que o usuario acessa o site da Magazine') do
  @page = CarrinhoPage.new
  @page.load
  sleep(2)
  expect(page).to have_content('magalu')
  end
  
  Quando('o usuario faz a busca por {string}') do |pesquisa|
    @page.prencher(pesquisa)
    sleep(1)
    @page.pesquisar
    sleep(3)
  end
  
  Entao('o sistema verifica o resultado da busca') do
    have_css(@page.elemento_de_verificacao)
    sleep(2)
    have_css(@page.lista_de_items)
  end
  
  Dado('que o usuario seleciona o produto') do
    @page.click_no_item_de_selecao
    sleep(3)
    have_css('h1[data-testid*="heading-product"]')
  end
  
  Quando('o usuario adicionar o produto ao carrinho') do
    @page.adicionando_ao_carrinho
    sleep(2)
  end
  
  Entao('o sistema verifica se o produto foi adicionado ao carrinho') do
    have_css('div[class="BasketPage-title"]')
    sleep(2)
    have_css('div[class="BasketTable"]')
  end
  
  Dado('que o usuario adiciona o produto ao carrinho') do
    @page.click_no_item_de_selecao
    sleep(3)
    have_css('h1[data-testid*="heading-product"]')
    sleep(3)
    @page.adicionando_ao_carrinho
    sleep(2)
    have_css('div[class="BasketPage-title"]')
    sleep(2)
    have_css('div[class="BasketTable"]')
    sleep(2)
  end

  Quando('o usuario excluir o produto do carrinho') do
    @page.excluindo_do_carrinho
    sleep(2)
  end
  
  Entao('o sistema verifica se o produto foi tirado do carrinho') do
    have_css('div[class="BasketPage-title"]')
    sleep(2)
    have_css(@page.mensagem_sacola_vazia)
    sleep(2)
    expect(page).to have_content('Sua sacola está vazia')
    sleep(2)
  end
  
  Quando('o usuario visualisa o produto e nao adiciona ao carrinho') do
    have_css('h1[data-testid*="heading-product"]')
    sleep(2)
    @page.click_carrinho_de_compras
    sleep(2)
  end
  
  Entao('o sistema verifica se algo foi adicionado ao carrinho') do
    have_css('div[class="BasketPage-title"]')
    sleep(2)
    have_css(@page.mensagem_sacola_vazia)
    sleep(2)
    expect(page).to have_content('Sua sacola está vazia')
    sleep(2)
  end
  