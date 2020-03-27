# Automação de Página de Cadastro

> Para a aplicação que desenvolverá os testes automatizados:
>
> - Nos demonstre os cenários com a automação da aplicação em qualquer linguagem. Se você tiver escrito qualquer outro tipo de documentação, gostaríamos de ver.
> - Se houver mais anotações, questões ou qualquer coisa que possa ter surgido enquanto você fazia seus testes, pode nos enviar também.
>
> Essa aplicação se encontra nesse link: [Automação com Batista](https://automacaocombatista.herokuapp.com/treinamento/home)

## Regras de Negócio

    Funcionalidade: Cadastro
        Eu como paciente da Rede D'Or gostaria de realizar o preenchiemento do cadastro para marcar consultas e exames

    #Os campos nome e e-mail são obrigatórios
    #O email deve seguir o padrão email@email.com
    #A mensagem de sucesso deve ser "Usuário Criado com sucesso"

## O que foi utilizado

- Plataforma: Linux
- IDLE: VSCode
- Browser: Chrome
- Ruby
- Cucumber
- Capybara
- Siteprism

## Como montar o ambiente

### Instalação do Ruby

- Instalação do Ruby no MacOS: [Tutorial QANINJA - Instalando o Ruby no MacOS](https://medium.com/qaninja/instalando-o-ruby-no-macos-435f451b86a8).
- Instalação do Ruby no Linux: [Tutorial QANINJA - Instalando o Ruby no Linux](https://medium.com/qaninja/como-instalar-ruby-com-rbenv-no-ubuntu-a75d1999362b).
- Instalação do Ruby no Windows: [Tutorial QANINJA - Instalando o Ruby no Windows](https://medium.com/qaninja/instalando-ruby-cucumber-e-capybara-no-windows-10-acb1fe833a95).

### Instalação do Cucumber

    gem install cucumber

### Instalação do Capybara e rspec

    gem install rspec

    gem install capybara

### Instalação do chromedriver

> Lembre-se que a versão do seu chrome e do chromedriver deve ser a mesma

[Página Oficial do Chrome Driver](https://chromedriver.chromium.org/downloads)

[Instalação do Chrome Driver no Linux](https://tecadmin.net/setup-selenium-chromedriver-on-ubuntu/)

### Rodar o bundle install para criar o Gemfile.lock

> Deve rodar na mesma pasta que está o Gemfile

    bundle install

## Documentações utilizadas

### Cucumber

[Cucumber.io](https://cucumber.io/docs/gherkin/)

### Capybara

[Capybara cheatsheet](https://devhints.io/capybara)

### RSpec

[Rspec Built in matchers](https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers)

### SitePrim

[SitePrismDoc](https://github.com/site-prism/site_prism)
