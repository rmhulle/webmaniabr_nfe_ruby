module WebmaniabrNfeRuby
  module Models
    class Transport
      attr_accessor :cnpj, :company_name, :ie, :address, :uf, :city, :cep

      def initialize(options = {})
        @cnpj         = options[:cnpj]
        @company_name = options[:company_name]
        @ie           = options[:ie]
        @cpf          = options[:cpf]
        @name         = options[:name]
        @address      = options[:address]
        @uf           = options[:uf]
        @city         = options[:city]
        @cep          = options[:cep]
        @board        = options[:board]
        @uf_vehicle   = options[:uf_vehicle]
        @rntc         = options[:rntc]
        @volume       = options[:volume]
        @kind         = options[:kind]
        @mark         = options[:mark]
        @numeration   = options[:numeration]
        @seals        = options[:seals]
      end

      def to_hash
        {
          cnpj: @cnpj,
          razao_social: @company_name,
          ie: @ie,
          cpf: @cpf,
          nome_completo: @name,
          endereco: @address,
          uf: @uf,
          cidade: @city,
          cep: @cep,
          placa: @board,
          uf_veiculo: @uf_vehicle,
          rntc: @rntc,
          volume: @volume,
          especie: @kind,
          mark: @mark,
          numeracao: @numeration,
          lacres: @seals
        }
      end
    end
  end
end
