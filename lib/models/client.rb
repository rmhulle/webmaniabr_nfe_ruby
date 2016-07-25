module WebmaniabrNfeRuby
  module Models
    class Client
      attr_accessor :cpf, :name, :address, :complement, :number, :neighborhood,
        :city, :uf, :cep, :phone, :mail

      def initialize(options = {})
        @cpf          = options[:cpf]
        @name         = options[:name]
        @cnpj         = options[:cnpj]
        @ie           = options[:ie]
        @company_name = options[:company_name]
        @suframa      = options[:suframa]
        @id_foreign   = options[:id_foreign]
        @foreign_name = options[:foreign_name]
        @cod_country  = options[:cod_country]
        @country_name = options[:country_name]
        @address      = options[:address]
        @complement   = options[:complement]
        @number       = options[:number]
        @neighborhood = options[:neighborhood]
        @city         = options[:city]
        @uf           = options[:uf]
        @cep          = options[:cep]
        @phone        = options[:phone]
        @mail         = options[:mail]
      end

      def to_hash
        {
          cpf: @cpf,
          nome_completo: @name,
          cnpj: @cnpj,
          ie: @ie,
          razao_social: @company_name,
          suframa: @suframa,
          id_estrangeiro: @id_foreign,
          nome_estrangeiro: @foreign_name,
          cod_pais: @cod_country,
          nome_pais: @country_name,
          endereco: @address,
          complemento: @complement,
          numero: @number,
          bairro: @neighborhood,
          cidade: @city,
          uf: @uf,
          cep: @cep,
          phone: @phone,
          email: @mail
        }
      end
    end
  end
end
