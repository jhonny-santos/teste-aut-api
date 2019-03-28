module REST
  def consulta_cep
    ConsultaCep::Rest::ConsultaViaCep.new
  end
end