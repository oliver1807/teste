class ShippingPage <SitePrism::Page
    
        element :termo_aceite, '#uniform-cgv'
        element :btn_prosseguir, '.standard-checkout'

        def clicar_termo_aceite
          self.termo_aceite.click     
        end
  
        def clicar_botao_prosseguir
           self.btn_prosseguir.click
        end    
end