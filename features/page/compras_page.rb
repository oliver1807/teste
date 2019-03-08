class ComprasPage <SitePrism::Page

element :botao_carrinho, 'p[id="add_to_cart"]>button[type="submit"]'
element :nome_prod_busca, 'div > div.right-block > h5 > a[href*="id_product=1&controller=product"]'
element :btn_check, 'a[class="btn btn-default button button-medium"]'
element :btn_proc_check, 'p[class="cart_navigation clearfix"]>a[class*="button-medium"]'



def sel_item
    @nome_item = (nome_prod_busca.text)
    find(:xpath,'//*[@id="homefeatured"]/li[1]/div').click
    botao_carrinho.click
    btn_check.click
   
end

def avancar_checkout
    btn_proc_check.click  
end

end