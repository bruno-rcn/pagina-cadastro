Dado("que estou na página de cadastro") do
    @cadastro_pagina = Cadastro.new
    @cadastro_pagina.load
end
  
Quando("eu preencher todos os dados") do
    @cadastro_pagina = Cadastro.new
    @cadastro_pagina.preencher_todos_os_dados
    @cadastro_pagina.enviar_dados
end

Então("devo ver a mensagem {string}") do |texto_usuario_criado|
    @usuario_pagina = Usuario.new
    expect(@usuario_pagina.mensagem_sucesso).to eql(texto_usuario_criado)
end
  
Quando("eu preencher os dados obrigatórios") do
    @cadastro_pagina = Cadastro.new
    @cadastro_pagina.preencher_dados_obrigatorios
    @cadastro_pagina.enviar_dados
end
  
Quando("eu não preencher nenhum dado") do
    @cadastro_pagina = Cadastro.new
    @cadastro_pagina.enviar_dados
end
  
Então("devo ver a mensagem de erro do nome em branco {string}") do |texto_erro_nome_em_branco|
    @cadastro_pagina = Cadastro.new
    expect(@cadastro_pagina.mensagem_erro).to have_text(texto_erro_nome_em_branco)
end
  
Então("devo ver a mensagem de erro de email em branco {string}") do |texto_erro_email_em_branco|
    @cadastro_pagina = Cadastro.new
    expect(@cadastro_pagina.mensagem_erro).to have_text(texto_erro_email_em_branco)
end
  
Então("devo ver a mensagem de erro de email inválido {string}") do |texto_erro_email_invalido|
    @cadastro_pagina = Cadastro.new
    expect(@cadastro_pagina.mensagem_erro).to have_text(texto_erro_email_invalido)
end
  
Então("a quantidade de erros deve ser {int}") do |quantidade_de_erros|
    @cadastro_pagina = Cadastro.new
    expect(@cadastro_pagina.mensagem_erro).to have_text(quantidade_de_erros)
end
  
Quando("eu não preencher o nome") do
    @cadastro_pagina = Cadastro.new
    @cadastro_pagina.nao_preencher_nome
    @cadastro_pagina.enviar_dados
end
  
Quando("eu não preencher o email") do
    @cadastro_pagina = Cadastro.new
    @cadastro_pagina.nao_preencher_email
    @cadastro_pagina.enviar_dados
end
  
Quando("eu preencher um email inválido") do
    @cadastro_pagina = Cadastro.new
    @cadastro_pagina.preencher_email_invalido
    @cadastro_pagina.enviar_dados
end