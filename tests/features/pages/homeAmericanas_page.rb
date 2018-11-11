class HomeAmericanas < SitePrism::Page
    set_url 'http://www.americanas.com.br'

    element :campoBusca, '#h_search-input'
    element :botaoSubmeter, '#h_search-btn'


    def preencherBusca(codIsbn)
        campoBusca.set codIsbn
        botaoSubmeter.click
        
    end
end
