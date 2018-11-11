# language: pt

Funcionalidade: Buscar o mesmo livro em mais de uma loja online

@submarino
Cenário: Buscar o primeiro livro exibido no site Submarino
Dado que estou no site da loja: www.submarino.com.br
E busco o primeiro livro da loja
Quando seleciono o livro
Então o sistema deve exibir o livro com todas as infomações

@americanas
Cenário: Buscar livro por ISBN (mesmo do cenário 1) no site americanas
Dado que estou no site da loja: www.americanas.com.br
Quando busco um livro pelo código ISBN: '9788532514943' no site americanas
Então o sistema deve localizar o produto no site americanas
E exibir o produto correto com todas as informações


@amazon
Cenário: Buscar livro por ISBN (mesmo do cenário 1) no site amazon
Dado que estou no site de uma loja online: www.amazon.com.br
Quando busco um livro pelo código ISBN: '9788532514943' no site amazon
Então o sistema deve localizar o produto no site amazon
E exibir o produto correto com todas as informações

