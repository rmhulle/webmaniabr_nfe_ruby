module WebmaniabrNfeRuby
  class ValidateA1Cert < ApiInterface
    def initialize(options = {})
      super('nfe/certificado/')
    end

    def request
      return process()
    end
  end
end
