# language :pt

Funcionalidade: Compra no site

    Sendo uma pessoa física navegando no site 
    Posso selecionar produto(s) e realizar o cadastro
    Para concluir a compra com sucesso através da entrada dos dados

    Cenário: Compra no site

        Dado que acesso o site para compras
        Quando seleciono um produto
        E prossigo o checkout com o registro meus dados no cadastro como: nome, sobrenome, e-mail e endereco
        E defino meio de pagamento 
        Então o pedido é finalizado com sucesso com os dados corretos