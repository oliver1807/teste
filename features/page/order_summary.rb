class Order <SitePrism::Page
    
        element :cartao, '.bankwire'

        def clicar_forma_pagamento_cartao
          self.cartao.click     
        end
  
end