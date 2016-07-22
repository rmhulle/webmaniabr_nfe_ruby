module WebmaniabrNfeRuby
  module Models
    class Product
      attr_accessor :name, :sku, :ean, :ncm, :cest, :cnpj_product, :quantity,
        :unit, :weight, :origin, :subtotal, :total, :tax_class

      def initialize(options = {})
        @name         = options[:name]
        @sku          = options[:sku]
        @ean          = options[:ean]
        @ncm          = options[:ncm]
        @cest         = options[:cest]
        @cnpj_product = options[:cnpj_product]
        @quantity     = options[:quantity]
        @unit         = options[:unit]
        @weight       = options[:weight]
        @origin       = options[:origin]
        @subtotal     = options[:subtotal]
        @total        = options[:total]
        @tax_class    = options[:tax_class]
      end
    end
  end
end
