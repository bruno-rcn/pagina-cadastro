#language: pt

Funcionalidade: Cadastro 
    Eu como paciente da Rede D'Or gostaria de realizar o preenchiemento do cadastro para marcar consultas e exames

Contexto: Acessar a página de cadastro
    Dado que estou na página de cadastro 

@smoke
Cenário: Dados corretos 
    Quando eu preencher todos os dados 
    Então devo ver a mensagem "Usuário Criado com sucesso"

Cenário: Dados obrigatórios preenchidos 
    Quando eu preencher os dados obrigatórios
    Então devo ver a mensagem "Usuário Criado com sucesso"

Cenário: Nenhum dado preenchido 
    Quando eu não preencher nenhum dado 
    Então devo ver a mensagem de erro do nome em branco "name.blank"
    E devo ver a mensagem de erro de email em branco "email.blank" 
    E devo ver a mensagem de erro de email inválido "email.invalid"
    E a quantidade de erros deve ser 3

Cenário: Nome em branco 
    Quando eu não preencher o nome 
    Então devo ver a mensagem de erro do nome em branco "name.blank"
    E a quantidade de erros deve ser 1

Cenário: E-mail em branco 
    Quando eu não preencher o email
    Então devo ver a mensagem de erro de email em branco "email.blank" 
    E devo ver a mensagem de erro de email inválido "email.invalid"
    E a quantidade de erros deve ser 2

Cenário: E-mail inválido
    Quando eu preencher um email inválido
    Então devo ver a mensagem de erro de email inválido "email.invalid"
    E a quantidade de erros deve ser 1


