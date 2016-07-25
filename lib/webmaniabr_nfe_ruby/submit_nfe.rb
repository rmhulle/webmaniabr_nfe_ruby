module WebmaniabrNfeRuby
  class SubmitNfe < ApiInterface
    def initialize(options = {})
      @request = options[:request]

      super('nfe/emissao/')
    end

    def request
      return process(method: 'POST', params: @request.to_hash)
    end
  end
end
