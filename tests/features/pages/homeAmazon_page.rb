class HomeAmazon < SitePrism::Page
    set_url 'http://www.amazon.com.br'

    element :campoBusca, '#twotabsearchtextbox'
    element :botaoSubmeter, 'input[type="submit"]', match: :first



    def preencherBusca(codIsbn)
        campoBusca.set codIsbn
        botaoSubmeter.click
        
    end
end
