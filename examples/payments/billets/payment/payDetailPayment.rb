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
    idPagamento = 0
    # status = "REALIZADO" || "EM_PROCESSAMENTO" || "AGENDADO" || "LIQUIDADO" || "CANCELADO" || "NAO_REALIZADO"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.payDetailPayment(params: params)