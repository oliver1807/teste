class PedidoFinal <SitePrism::Page
    
    element :btn_process_checkout, '.button-medium'


    def validar_pedido
        $endereco_pedido = find(:css, '#address_delivery .address_address1').text
        $nome_rua = @nome_rua
    end

    def clicar_botao_prosseguir
        self.btn_process_checkout.click
    end    
end