require 'net/http'

module WebmaniabrRuby
  class ApiInterface
    def initialize(action)
      @uri = URI(base_uri + action)
    end

    def process(params = nil)
      authenticate = WebmaniabrRuby.configuration.authenticate

      req = Net::HTTP::Get.new(@uri)
      req['X-Consumer-Key']        = authenticate.consumer_key
      req['X-Consumer-Secret']     = authenticate.consumer_secret
      req['X-Access-Token']        = authenticate.access_token
      req['X-Access-Token-Secret'] = authenticate.access_token_secret
      req['Content-Type']          = 'application/json'

      res =  Net::HTTP.start(@uri.hostname, @uri.port, use_ssl: true) do |http|
        http.request(req)
      end

      return res.body
    end

    private
      def base_uri
        'https://webmaniabr.com/api/1/'
      end
  end
end
