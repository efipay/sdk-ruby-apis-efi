require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

require "uri"
require "net/http"
require "openssl"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  certificate: CREDENTIALS::CERTIFICATE,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
    chave: "7f4151c7-49a5-4e95-ab24-55bc8f1a2e86"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixDetailWebhook(params: params)

