module WebmaniabrNfeRuby
  class ConsultNfe < ApiInterface
    def initialize(options = {})
      @key = options[:key]

      super('nfe/consulta')
    end

    def request
      return process(method: 'GET', params: {
        chave: @key
      })
    end
  end
end
