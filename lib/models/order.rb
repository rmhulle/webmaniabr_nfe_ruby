module WebmaniabrNfeRuby
  module Models
    class Order
      attr_accessor :payment, :presence, :ship_tax, :ship_value, :discount,
        :total

      def initialize(options = {})
        @payment                = options[:payment]
        @presence               = options[:presence]
        @ship_type              = options[:ship_type]
        @ship_value             = options[:ship_value]
        @discount               = options[:discount]
        @total                  = options[:total]
        @other_costs            = options[:other_costs]
        @fisco_informations     = options[:fisco_informations]
        @complement_information = options[:complement_information]
      end

      def to_hash
        {
          pagamento: @payment,
          presenca: @presence,
          modalidade_frete: @ship_type,
          frete: @ship_value,
          desconto: @discount,
          total: @total,
          despesas_acessorias: @other_costs,
          informacoes_fisco: @fisco_informations,
          informacoes_complementares: @complement_information
        }
      end
    end
  end
end
