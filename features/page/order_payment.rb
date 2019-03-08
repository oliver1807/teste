class OrderPayment <SitePrism::Page
    
        element :btn_confirmar_ordem, '.icon-chevron-right'

        def clicar_botao_confirmar_ordem
          self.btn_confirmar_ordem.click     
        end
  
end