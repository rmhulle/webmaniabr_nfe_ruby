module WebmaniabrNfeRuby
  module Models
    class Order
      attr_accessor :payment, :presence, :ship_tax, :ship_value, :discount,
        :total

      def initialize(options = {})
        @payment    = options[:payment]
        @presence   = options[:presence]
        @ship_type  = options[:ship_type]
        @ship_value = options[:ship_value]
        @discount   = options[:discount]
        @total      = options[:total]
      end

      def to_hash
        {
          pagamento: @payment,
          presenca: @presence,
          modalidade_frete: @ship_type,
          frete: @ship_value,
          discount: @discount,
          total: @total
        }
      end
    end
  end
end
