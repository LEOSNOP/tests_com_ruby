Dado('que o usuario acessa a Americanas') do
    busca.load
    sleep(2)
    expect(page).to have_content('americanas')
  end
  
  Quando('o usuario faz busca de um {string}') do |pesquisa|
    busca.prencher(pesquisa)
    sleep(1)
    busca.pesquisar
    sleep(5)
  end
  
  Entao('o sistema verifica o resultado da busca valida') do
    expect(page).to have_content('resultados para ')
    sleep(3)
    have_css(busca.lista_de_items)

  end
  
  Entao('o sistema verifica o resultado invalido') do
    expect(page).to have_content('poxa, nenhum resultado encontrado para ')
    sleep(3)
    expect(page).to have_content('Que tal pesquisar de novo seguindo as dicas abaixo? ;)')
  end
  
  Entao('o sistema verifica o resultado do produto generico') do
    expect(page).to have_content('resultados para ')
    sleep(3)
    have_css(busca.lista_de_items)
    sleep(2)
  end
  
  Quando('o usuario faz uma busca {string}') do |vazio|
    busca.prencher(vazio)
    sleep(1)
    busca.pesquisar
    sleep(5)
  end
  
  Entao('o sistema permanece na pagina') do
    expect(page).to have_content('americanas')
  end
  