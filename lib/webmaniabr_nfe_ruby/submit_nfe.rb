module WebmaniabrNfeRuby
  class SubmitNfe < ApiInterface
    def initialize(options = {})
      @request = options[:request]

      super('nfe/emissao/')
    end

    def request
      return process(@request)
    end
  end
end
