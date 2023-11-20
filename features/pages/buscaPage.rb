class BuscaPage < SitePrism::Page
    set_url 'https://americanas.com.br'
    
    element :barra_pesquisa , 'input[aria-label="Pesquisar"]'

    element :lista_de_items , 'div[class*="src__GridItem"]'

    def prencher (pesquisa)
        barra_pesquisa.set pesquisa
    end

    def pesquisar
        barra_pesquisa.send_keys :enter
    end

end