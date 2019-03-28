#language:pt

@consulta_cep
Funcionalidade: Validar consulta de dados de endereço via CEP
  Eu como automação
  quero enviar requisições para o serviço  viacep.com.br/ws/01001000/json/
  para validar disponibilidade e informações da mesma

  @consulta_cep_sucesso
  Cenario: Realizar consulta de cep com sucesso
    Dado que tenha informado um cep válido
    Quando é enviada uma requisição do tipo GET para o serviço de consulta de CEP
    Então o código de resposta deve ser "200" para o serviço de consulta de CEP
    E devo validar a exibição do campo "ibge"

  @consulta_cep_invalido
  Cenario: Realizar consulta de cep com cep inválido
    Dado que tenha informado um cep inválido
    Quando é enviada uma requisição do tipo GET para o serviço de consulta de CEP
    Então o código de resposta deve ser "200" para o serviço de consulta de CEP
    E o campo erro deve apresentar o valor true