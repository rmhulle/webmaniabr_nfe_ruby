require 'net/http'
require 'json'

module WebmaniabrNfeRuby
  class ApiInterface
    def initialize(action)
      @uri = URI(base_uri + action)
    end

    def process(options = {})
      authenticate = WebmaniabrNfeRuby.configuration.authenticate

      res =  Net::HTTP.start(@uri.hostname, @uri.port, use_ssl: true) do |http|
        case options[:method]
        when 'GET'
          req = Net::HTTP::Get.new(@uri)
        when 'POST'
          req = Net::HTTP::Post.new(@uri)
        when 'PUT'
          req = Net::HTTP::Put.new(@uri)
        end

        req['X-Consumer-Key']        = authenticate.consumer_key
        req['X-Consumer-Secret']     = authenticate.consumer_secret
        req['X-Access-Token']        = authenticate.access_token
        req['X-Access-Token-Secret'] = authenticate.access_token_secret
        req['Content-Type']          = 'application/json'

        if options[:params]
          req.body = options[:params]
        end

        http.request(req)
      end

      # converte o json para hash e converte as string keys para sym
      return JSON.parse(res.body).inject({}) { |memo, (k,v)| memo[k.to_sym] = v; memo }
    end

    private
      def base_uri
        'https://webmaniabr.com/api/1/'
      end
  end
end
