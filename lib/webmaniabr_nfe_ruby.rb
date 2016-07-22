require 'webmaniabr_nfe_ruby/version'
require 'webmaniabr_nfe_ruby/configuration'
require 'webmaniabr_nfe_ruby/api_interface'
require 'webmaniabr_nfe_ruby/authenticate'
require 'webmaniabr_nfe_ruby/sefaz_status'
require 'webmaniabr_nfe_ruby/validate_a1_cert'
require 'models/request'
require 'models/client'
require 'models/product'
require 'models/order'
require 'models/transport'
require 'webmaniabr_nfe_ruby/submit_nfe'

module WebmaniabrNfeRuby
  def self.configure
    yield(configuration)
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.sefaz_status
    SefazStatus.new.request
  end

  def self.validate_a1_cert
    ValidateA1Cert.new.request
  end

  def self.submit_nfe(options)
    SubmitNfe.new.request(options)
  end
end
