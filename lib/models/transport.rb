module WebmaniabrNfeRuby
  module Models
    class Transport
      attr_accessor :cnpj, :company_name, :ie, :address, :uf, :city, :cep

      def initialize(options = {})
        @cnpj         = options[:cnpj]
        @company_name = options[:company_name]
        @ie           = options[:ie]
        @address      = options[:address]
        @uf           = options[:uf]
        @city         = options[:city]
        @cep          = options[:cep]
      end

      def to_hash
        {
          cnpj: @cnpj,
          razao_social: @company_name,
          ie: @ie,
          endereco: @address,
          uf: @uf,
          cidade: @city,
          cep: @cep
        }
      end
    end
  end
end
