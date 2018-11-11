class BuscaAmazon < SitePrism::Page

    element :livroBuscado, '#result_0 div:nth-child(1) a h2'


    def clicarLivro
        livroBuscado.click
        
    end

end