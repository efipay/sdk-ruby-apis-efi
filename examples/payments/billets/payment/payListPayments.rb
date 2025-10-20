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
    dataInicio: "2022-01-01",
    dataFim: "2024-12-31"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.payListPayments(params: params)