module WebmaniabrNfeRuby
  class SefazStatus < ApiInterface
    def initialize(options = {})
      super('nfe/sefaz/')
    end

    def request
      return process()
    end
  end
end
