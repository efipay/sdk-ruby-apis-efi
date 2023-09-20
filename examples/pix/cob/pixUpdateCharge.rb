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
    txid: "3d2c06dfa3d446bf82651aeb1dccb2b0"
}

body = {
    calendario: {
      expiracao: 3600
    },
    devedor: {
        cpf: "12345678909",
        nome: "Francisco da Silva"
    },
    valor: {
        original: "5.01"
    },
    solicitacaoPagador: "Cobrança dos serviços prestados."
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixUpdateCharge(params: params, body: body)
