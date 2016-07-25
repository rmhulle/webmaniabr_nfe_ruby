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
require 'webmaniabr_nfe_ruby/submit_devolution_nfe'
require 'webmaniabr_nfe_ruby/consult_nfe'
require 'webmaniabr_nfe_ruby/cancel_nfe'
require 'webmaniabr_nfe_ruby/disable_numbering'

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

  def self.submit_nfe(options = {})
    SubmitNfe.new(options).request
  end

  def self.submit_devolution_nfe(options = {})
    SubmitDevolutionNfe.new(options).request
  end

  def self.consult_nfe(options = {})
    ConsultNfe.new(options).request
  end

  def self.cancel_nfe(options = {})
    CancelNfe.new(options).request
  end

  def self.disable_numbering(options = {})
    DisableNumbering.new(options).request
  end
end
