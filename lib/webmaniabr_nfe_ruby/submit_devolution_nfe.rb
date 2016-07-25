module WebmaniabrNfeRuby
  class SubmitDevolutionNfe < ApiInterface
    def initialize(options = {})
      @key = options[:key]
      @tax_class = options[:tax_class]
      @operation_nature = options[:operation_nature]

      super('nfe/devolucao/')
    end

    def request
      return process(method: 'POST', params: {
        chave: @key,
        classe_imposto: @tax_class,
        natureza_operacao: @operation_nature
      })
    end
  end
end
