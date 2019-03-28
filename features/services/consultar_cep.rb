module ConsultaCep
  module Rest
    class ConsultaViaCep
      include HTTParty
      base_uri ENDPOINT["consulta_cep"]

      def get_infos_cep(cep)
        response = self.class.get("/#{cep}/json")
        generate_evidence response
        response
      end
    end
  end
end