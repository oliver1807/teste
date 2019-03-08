class PedidoPage <SitePrism::Page

    element :nome_prod_pedido, 'p[class="product-name"]>a[href*="controller=product"]'

    def comp_name

      @nm_pedido=(nome_prod_pedido.text)
     
    end



end