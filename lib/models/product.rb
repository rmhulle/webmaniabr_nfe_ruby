module WebmaniabrNfeRuby
  module Models
    class Product
      attr_accessor :name, :sku, :ean, :ncm, :cest, :cnpj_product, :quantity,
        :unit, :weight, :origin, :subtotal, :total, :tax_class

      def initialize(options = {})
        @name       = options[:name]
        @sku        = options[:sku]
        @ean        = options[:ean]
        @ncm        = options[:ncm]
        @cest       = options[:cest]
        @cnpj_maker = options[:cnpj_maker]
        @quantity   = options[:quantity]
        @unit       = options[:unit]
        @weight     = options[:weight]
        @origin     = options[:origin]
        @subtotal   = options[:subtotal]
        @total      = options[:total]
        @tax_class  = options[:tax_class]
      end

      def to_hash
        {
          nome: @name,
          sku: @sku,
          ncm: @ncm,
          cest: @cest,
          cnpj_produtor: @cnpj_produtor,
          quantidade: @quantity,
          unidade: @unit,
          peso: @weight,
          origem: @origin,
          subtotal: @subtotal,
          total: @total,
          classe_imposto: @tax_class
        }
      end
    end
  end
end
