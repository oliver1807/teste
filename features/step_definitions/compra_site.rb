Dado("que acesso o site para compras") do
      @avancar_pedido.load
  end
  
Quando("seleciono um produto") do
      @compra_site.sel_item       
 end
  
Quando("prossigo o checkout com o registro meus dados no cadastro como: nome, sobrenome, e-mail e endereco") do 
      @pedido_site.comp_name
      expect(@nm_pedido).to eql @nome_item
      @compra_site.avancar_checkout
      @avancar_pedido.autenticacao
      @avancar_pedido.cad_pessoa
      @final_pedido.validar_pedido
      expect(@endereco_pedido).to eql(@nome_rua)
      @final_pedido.clicar_botao_prosseguir    
 end
  
Quando("defino meio de pagamento") do
      @shipping.clicar_termo_aceite
      @shipping.clicar_botao_prosseguir
      @order.clicar_forma_pagamento_cartao
end
  
Então("o pedido é finalizado com sucesso com os dados corretos") do 
      @order_payment.clicar_botao_confirmar_ordem
end