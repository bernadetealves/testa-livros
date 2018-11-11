class ProdutoSubmarino < SitePrism::Page

    element :nomeLivro, '.product-name'
    element :isbn, 'tr:nth-child(2) td:nth-child(2) span'
    element :autor, 'tr:nth-child(3) td:nth-child(2) span'
end
