class Cadastro < SitePrism::Page
    set_url 'users/new'

    element :input_nome, '#user_name'
    element :input_sobrenome, '#user_lastname'
    element :input_email, '#user_email'
    element :input_endereco, '#user_address'
    element :input_universidade, '#user_university'
    element :input_profissao, '#user_profile'
    element :input_genero, '#user_gender'
    element :input_idade, '#user_age'
    element :botao_enviar, 'input[type="submit"]'
    element :texto_erro, '#error_explanation'

    def preencher_todos_os_dados 
        input_nome.set 'Joana'
        input_sobrenome.set 'Rodriguez'
        input_email.set 'j.rodriguez@gmail.com'
        input_endereco.set 'Rua António Pedro, 567, Apto 2'
        input_universidade.set 'Universidade de Lisboa'
        input_profissao.set 'Designer'
        input_genero.set 'Feminino'
        input_idade.set '27'
    end

    def preencher_dados_obrigatorios
        input_nome.set 'Joana'
        input_email.set 'j.rodriguez@gmail.com'
    end

    def nao_preencher_nome
        input_sobrenome.set 'Rodriguez'
        input_email.set 'j.rodriguez@gmail.com'
        input_endereco.set 'Rua António Pedro, 567, Apto 2'
        input_universidade.set 'Universidade de Lisboa'
        input_profissao.set 'Designer'
        input_genero.set 'Feminino'
        input_idade.set '27'
    end

    def nao_preencher_email
        input_nome.set 'Joana'
        input_sobrenome.set 'Rodriguez'
        input_endereco.set 'Rua António Pedro, 567, Apto 2'
        input_universidade.set 'Universidade de Lisboa'
        input_profissao.set 'Designer'
        input_genero.set 'Feminino'
        input_idade.set '27'
    end

    def preencher_email_invalido
        input_nome.set 'Joana'
        input_sobrenome.set 'Rodriguez'
        input_email.set 'j.rodriguez'
        input_endereco.set 'Rua António Pedro, 567, Apto 2'
        input_universidade.set 'Universidade de Lisboa'
        input_profissao.set 'Designer'
        input_genero.set 'Feminino'
        input_idade.set '27'
    end

    def enviar_dados
        botao_enviar.click
    end 

    

    def mensagem_erro
        texto_erro.text
    end 

end

