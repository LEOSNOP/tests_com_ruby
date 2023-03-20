Dir[File.join(File.dirname(__FILE__), '../pages/*Page.rb')].each { |file| require file }


module PageObjects
    
    def carrinho
        @carrinho ||= CarrinhoPage.new        
    end

    def busca
        @busca ||= BuscaPage.new
    end

end