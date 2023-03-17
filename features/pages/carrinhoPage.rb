class CarrinhoPage < SitePrism::Page
    set_url 'https://www.magazineluiza.com.br'
    
    element :barra_pesquisa , 'input[id="input-search"]'

    element :elemento_de_verificacao, 'span[title*="Resultados"]'

    element :lista_de_items , 'div[data-testid="product-list"]'

    element :selecao_do_item, 'a[href*="p/2215"]'

    element :botao_add_carrinho, '#__next > div > main > section:nth-child(7) > div.sc-jrcTuL.kQzMUn > div:nth-child(2) > button'

    def prencher (pesquisa)
        barra_pesquisa.set pesquisa
    end
    
    def pesquisar
        barra_pesquisa.send_keys :enter
    end

    def click_no_item_de_selecao 
        selecao_do_item.click 
    end

    def adicionando_ao_carrinho
        botao_add_carrinho.click
    end

end


