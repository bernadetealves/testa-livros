  
 
 
 Dado("que estou no site da loja: www.submarino.com.br") do
    homeSub.load
  end
  
  Dado("busco o primeiro livro da loja") do
   homeSub.livro
  end
  
  Quando("seleciono o livro") do
    homeSub.selecionaLivro
  end
  
  Então("o sistema deve exibir o livro com todas as infomações") do
    expect(paginaProduto.current_url).to include('produto/132394988/livro-box-harry-potter-guia-cinematografico-colecao')
    expect(paginaProduto.nomeLivro.text).to eql ('Livro - Box Harry Potter - Guia Cinematográfico - Coleção')
    expect(paginaProduto.isbn.text).to eql ('9788532514943')
    expect(paginaProduto.autor.text).to eql ('Felicity Baker')
  end
  

  Dado("que estou no site da loja: www.americanas.com.br") do
    homeAme.load
  end
  
  Quando("busco um livro pelo código ISBN: {string} no site americanas") do |codIsbn|
    homeAme.preencherBusca(codIsbn)
  end
  
  
  Então("o sistema deve localizar o produto no site americanas") do
    buscaProdutoAme.clicarLivro
  end
  
  Então("exibir o produto correto com todas as informações") do
    page.assert_text(text,'Livro - Box Harry Potter - Guia')
    page.assert_text(text, 'Felicity Baker')
  end
  
 
  Dado("que estou no site de uma loja online: www.amazon.com.br") do
    homeAma.load
  end
  
  Quando("busco um livro pelo código ISBN: {string} no site amazon") do |codIsbn|
    homeAma.preencherBusca(codIsbn)
  end
  
  Então("o sistema deve localizar o produto no site amazon") do
    buscaProdutoAma.clicarLivro
  end
  

  