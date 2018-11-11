class BuscaAmericanas < SitePrism::Page

    element :livroBuscado, '.card-product-name', match: :first

    def clicarLivro
        livroBuscado.click
        
    end

end