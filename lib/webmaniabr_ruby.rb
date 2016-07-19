require 'webmaniabr_ruby/version'
require 'webmaniabr_ruby/configuration'
require 'webmaniabr_ruby/api_interface'
require 'webmaniabr_ruby/authenticate'
require 'webmaniabr_ruby/sefaz_status'
require 'webmaniabr_ruby/validate_a1_cert'
require 'webmaniabr_ruby/submit_nfe'

module WebmaniabrRuby
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

  def self.submit_nfe
    SubmitNfe.new.request
  end
end
