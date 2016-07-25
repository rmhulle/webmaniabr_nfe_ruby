module WebmaniabrNfeRuby
  module Models
    class Client
      attr_accessor :cpf, :name, :address, :complement, :number, :neighborhood,
        :city, :uf, :cep, :phone, :mail

      def initialize(options = {})
        @cpf = options[:cpf]
        @name = options[:name]
        @address = options[:address]
        @complement = options[:complement]
        @number = options[:number]
        @neighborhood = options[:neighborhood]
        @city = options[:city]
        @uf = options[:uf]
        @cep = options[:cep]
        @phone = options[:phone]
        @mail = options[:mail]
      end

      def to_hash
        {
          cpf: @cpf,
          nome_completo: @name,
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
