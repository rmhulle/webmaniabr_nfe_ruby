module WebmaniabrRuby
  class Authenticate
    attr_accessor :consumer_key, :consumer_secret, :access_token,
      :access_token_secret

    def initialize(options = {})
      self.consumer_key        = options[:consumer_key]
      self.consumer_secret     = options[:consumer_secret]
      self.access_token        = options[:access_token]
      self.access_token_secret = options[:access_token_secret]
    end
  end
end
