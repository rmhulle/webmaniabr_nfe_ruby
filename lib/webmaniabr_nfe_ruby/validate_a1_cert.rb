module WebmaniabrNfeRuby
  class ValidateA1Cert < ApiInterface
    def initialize(options = {})
      super('nfe/certificado/')
    end

    def request
      return process(method: 'GET')
    end
  end
end
