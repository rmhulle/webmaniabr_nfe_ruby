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
    end
  end
end
