module WebmaniabrNfeRuby
  class SefazStatus < ApiInterface
    def initialize(options = {})
      super('nfe/sefaz/')
    end

    def request
      return process(method: 'GET')
    end
  end
end
