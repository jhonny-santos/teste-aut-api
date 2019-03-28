## TESTE-AUT-API

## Sobre o projeto
Este Projeto foi criado com a finalidade de criar um framework para realizar testes de API, utilizando Ruby, HttParty e Cucumber. Neste projeto há 2 cenários de teste para realizar requisições na API de correios, validando o resultado.

[![Ruby Version][ruby-image]][ruby-url]



## Instalação

* Realizar o clone do projeto na pasta desejada
```sh
git clone https://github.com/jhonny-santos/teste-aut-api.git
```

* Abrir o cmd, ir até o diretório do projeto e instalar o "bundler"
```sh
gem install bundler
```

* Executar o comando "bundle install" no cmd para baixar todas as dependências do projeto

```sh
bundle install
```


## Execução 

Para a execução do projeto execute o comando 

```sh
cucumber --tags @consulta_cep
```



## Report

Após a execução é gerado um arquivo .txt com o report da execução realizada.

Exemplo:


![][screenshot-evidence]


Arquivo .txt gerado

![][evicence-txt]



[ruby-image]: https://img.shields.io/badge/ruby-v--2.5-red.svg
[ruby-url]: https://www.ruby-lang.org/pt/downloads/
[screenshot-evidence]: https://user-images.githubusercontent.com/26511817/55189153-e701e880-517b-11e9-841e-72421c328cc4.png
[evicence-txt]: https://user-images.githubusercontent.com/26511817/55189814-6512bf00-517d-11e9-95d4-68651d5e8fc0.png

