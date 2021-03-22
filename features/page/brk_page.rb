class BRK < SitePrism::Page   

    def clicar_cidade(encontrar_cidade)
        click_on(encontrar_cidade)             
    end

    def selecionar_estado(seleciona_estado)
        click_on(seleciona_estado)
        
    end

    def selecionar_cidade(pesquisa_cidade)
        click_on(pesquisa_cidade)       
    end

    def fechar_mensagem
        click_on('Close')        
    end

    def vaildar_mensagem(valida_mensagem)
        validacao = page.has_text? (valida_mensagem)
        raise "Não foi localizado VOCÊ ESTÁ NA CIDADE DE LIMEIRA" if validacao == false
    end
end