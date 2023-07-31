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

body = {
    calendario: {
        expiracao: 3600
    },
    devedor: {
        cpf: "12345678909",
        nome: "Francisco da Silva"
    },
    valor: {
        original: "0.01"
    },
    chave: "7f4151c7-49a5-4e95-ab24-55bc8f1a2e86",
    solicitacaoPagador: "Cobrança dos serviços prestados."
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pix_create_immediate_charge(body: body)
