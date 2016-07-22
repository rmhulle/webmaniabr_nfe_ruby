module WebmaniabrNfeRuby
  module Models
    class Order
      attr_accessor :payment, :presence, :ship_tax, :ship_value, :discount,
        :total

      def initialize(options = {})
        @payment    = options[:payment]
        @presence   = options[:presence]
        @ship_tax   = options[:ship_tax]
        @ship_value = options[:ship_value]
        @discount   = options[:discount]
        @total      = options[:total]
      end
    end
  end
end
