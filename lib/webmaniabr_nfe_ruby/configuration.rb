module WebmaniabrNfeRuby
  class Configuration
    attr_accessor :consumer_key, :consumer_secret, :access_token,
      :access_token_secret

    def authenticate
      @authenticate ||=
        Authenticate.new(consumer_key: consumer_key,
                         consumer_secret: consumer_secret,
                         access_token: access_token,
                         access_token_secret: access_token_secret)
    end
  end
end
