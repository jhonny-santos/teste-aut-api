PATH_MASSA = YAML.load_file("features/support/massa/cep.yml")

Dado('que tenha informado um cep válido') do
  @cep = PATH_MASSA["cep_valido"]["cep"].sample
end

Dado('que tenha informado um cep inválido') do
  @cep = PATH_MASSA["cep_invalido"]["cep"].sample
end

Quando ('é enviada uma requisição do tipo GET para o serviço de consulta de CEP') do
  @response_body_consultar_cep = consulta_cep.get_infos_cep @cep
end

Entao('o código de resposta deve ser {string} para o serviço de consulta de CEP') do |status_code|
  expect(@response_body_consultar_cep.code).to eq status_code.to_i
end

Entao('devo validar a exibição do campo {string}') do |campo|
  expect(@response_body_consultar_cep.parsed_response.key? "#{campo}").to be true
  puts "Código IBGE: " + @response_body_consultar_cep.parsed_response["#{campo}"]
end

Entao('o campo erro deve apresentar o valor true') do
  expect(@response_body_consultar_cep.parsed_response["erro"]).to be true
end