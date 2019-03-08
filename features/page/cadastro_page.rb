class CadastroPage <SitePrism::Page

    set_url CONFIG['url']
    
    element :ident_email, '#email_create'
    element :btn_create, 'button[id="SubmitCreate"]'
    element :alert_duplic, '#create_account_error'
    element :genero, '#id_gender1'
    element :nome_pessoa, '#customer_firstname'
    element :sobrn_pessoa, '#customer_lastname'
    element :senha, '#passwd'    
    element :dia_nasc, '#days > option[value="18"]'
    element :mes_nasc,'#months > option[value="7"]'
    element :ano_nasc, '#years > option[value="1983"]'
    element :nm_rua, '#address1'
    element :nm_city, '#city'
    element :id_state, '#id_state > option[value="2"]'
    element :zip_code, '#postcode'
    element :phone_mbl, '#phone_mobile'
    element :end2, '#alias'
    element :submit_cad, '#submitAccount'
    element :end_entg, '#address_delivery'
    
    


    def autenticacao
        @email_cad = Faker::Internet.email
        ident_email.set @email_cad
        btn_create.click
    end

    def cad_pessoa
        
        genero.click
        nome_pessoa.set "João"
        @sobrenome = Faker::Name.last_name
        sobrn_pessoa.set @sobrenome
        senha.set "senha123"
        dia_nasc.click
        mes_nasc.click
        ano_nasc.click     
        @nome_rua = Faker::Address.street_name   
        nm_rua.set @nome_rua
        @nome_cidade = Faker::Address.city
        nm_city.set @nome_cidade 
        id_state.click  
        @cdzip = Faker::Number.number(5)
        zip_code.set @cdzip
        @num_phone = Faker::Number.number(11)
        phone_mbl.set @num_phone
        @nome_rua2 = Faker::Address.street_name
        end2.set @nome_rua2
        submit_cad.click

    end

    

end