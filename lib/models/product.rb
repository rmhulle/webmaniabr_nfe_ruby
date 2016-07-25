module WebmaniabrNfeRuby
  module Models
    class Product
      attr_accessor :name, :sku, :ean, :ncm, :cest, :cnpj_product, :quantity,
        :unit, :weight, :origin, :subtotal, :total, :tax_class

      def initialize(options = {})
        @name             = options[:name]
        @sku              = options[:sku]
        @ean              = options[:ean]
        @ncm              = options[:ncm]
        @cest             = options[:cest]
        @nve              = options[:nve]
        @cnpj_maker       = options[:cnpj_maker]
        @special          = options[:special]
        @drawback         = options[:drawback]
        @reg_exportation  = options[:reg_exportation]
        @nfe_exportation  = options[:nfe_exportation]
        @qtd_exportation  = options[:qtd_exportation]
        @ndoc_import      = options[:ndoc_import]
        @ddoc_import      = options[:ddoc_import]
        @local_clearance  = options[:local_clearance]
        @uf_clearance     = options[:uf_clearance]
        @clearance_date   = options[:clearance_date]
        @ship_type        = options[:ship_type]
        @afrmm            = options[:afrmm]
        @intermediation   = options[:intermediation]
        @cnpj_requester   = options[:cnpj_requester]
        @cod_exportation  = options[:cod_exportation]
        @nfci             = options[:nfci]
        @addition         = options[:addition]
        @seq_addition     = options[:seq_addition]
        @maker            = options[:maker]
        @customs_expenses = options[:customs_expenses]
        @quantity         = options[:quantity]
        @unit             = options[:unit]
        @weight           = options[:weight]
        @origin           = options[:origin]
        @subtotal         = options[:subtotal]
        @total            = options[:total]
        @tax_class        = options[:tax_class]
      end

      def to_hash
        {
          nome: @name,
          sku: @sku,
          ncm: @ncm,
          cest: @cest,
          nve: @nve,
          cnpj_produtor: @cnpj_produtor,
          especial: @special,
          drawback: @drawback,
          reg_exportacao: @reg_exportation,
          nfe_exportacao: @nfe_exportation,
          qtd_exportacao: @qtd_exportation,
          ndoc_importacao: @ndoc_import,
          ddoc_importacao: @ddoc_import,
          local_desembaraco: @local_clearance,
          uf_desembaraco: @uf_clearance,
          data_desembaraco: @clearance_date,
          via_transporte: @ship_type,
          afrmm: @afrmm,
          intermediacao: @intermediacao,
          cnpj_terceiro: @cnpj_requester,
          nfci: @nfci,
          seq_adicao: @seq_addition,
          fabricante: @maker,
          despesas_aduaneiras: @customs_expenses,
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
