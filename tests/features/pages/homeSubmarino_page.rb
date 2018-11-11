class HomeSubmarino < SitePrism::Page
    set_url 'http://www.submarino.com.br'

    element :livro, '#content-top div:nth-child(5) .card-product-details h1', match: :first

    def selecionaLivro
        livro.click
        
    end
end

