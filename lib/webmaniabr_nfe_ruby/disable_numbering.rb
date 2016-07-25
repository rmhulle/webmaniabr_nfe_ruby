module WebmaniabrNfeRuby
  class DisableNumbering < ApiInterface
    def initialize(options = {})
      @range = options[:range]
      @reason = options[:reason]

      super('nfe/inutilizar/')
    end

    def request
      return process(method: 'PUT', params: {
        sequencia: @range,
        motivo: @reason
      })
    end
  end
end
