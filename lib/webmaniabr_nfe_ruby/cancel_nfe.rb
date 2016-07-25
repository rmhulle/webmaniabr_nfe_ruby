module WebmaniabrNfeRuby
  class CancelNfe < ApiInterface
    def initialize(options = {})
      @key    = options[:key]
      @reason = options[:reason]

      super('nfe/cancelar')
    end

    def request
      return process(method: 'PUT', params: {
        chave: @key,
        motivo: @reason
      })
    end
  end
end
