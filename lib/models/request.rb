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
        {
          id: @id,
          url_notificacao: @url_notification,
          modelo: @model,
          emissao: @emission,
          finalidade: @goal,
          ambiente: @environment,
          cliente: @client,
          produtos: @produtos,
          pedido: @order,
          transporte: @transport
        }
      end
    end
  end
end
