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
    codBarras = "36400000000000000000000000000000000000000000000"
}

body = {
    valor = 500
    dataPagamento = "2024-09-11"
    descricao = "Payment of the test billet"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.payRequestBarcode(params: params, body: body)
