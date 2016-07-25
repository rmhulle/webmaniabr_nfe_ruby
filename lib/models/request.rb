module WebmaniabrNfeRuby
  module Models
    class Request
      attr_accessor :id, :url_notification, :operation, :operation_nature,
        :model, :emission, :goal, :environment, :client, :products, :order,
        :transport

      def initialize(options = {})
        @id               = options[:id]
        @url_notification = options[:url_notification]
        @operation        = options[:operation]
        @operation_nature = options[:operation_nature]
        @model            = options[:model]
        @emission         = options[:emission]
        @goal             = options[:goal]
        @environment      = options[:environment]
        @client           = options[:client]
        @products         = options[:products]
        @order            = options[:order]
        @transport        = options[:transport]
      end

      def to_hash
        products = []

        if @products.class == Array
          @products.each do |product|
            products.push product.to_hash
          end
        end

        {
          ID: @id,
          url_notificacao: @url_notification,
          operacao: @operation,
          natureza_operacao: @operation_nature,
          modelo: @model,
          emissao: @emission,
          finalidade: @goal,
          ambiente: @environment,
          cliente: @client.to_hash,
          produtos: products,
          pedido: @order.to_hash,
          transporte: @transport ? @transport.to_hash : nil
        }
      end
    end
  end
end
