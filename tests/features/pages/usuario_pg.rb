class Usuario < SitePrism::Page
    element :texto_sucesso, '#notice'

    def mensagem_sucesso
        texto_sucesso.text
    end 
end