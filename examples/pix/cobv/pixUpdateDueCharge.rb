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
    txid: "7978p0c97ea847e78e8849634473c1f9"
}

body = {
    devedor: {
        logradouro: "Alameda Souza, Numero 80, Bairro Braz",
        cidade: "Recife",
        uf: "PE",
        cep: "70011750",
        cpf: "12345678909",
        nome: "Francisco da Silva"
    },
    valor: {
        original: "200.01"
    },
    solicitacaoPagador: "Cobrança dos serviços prestados."
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixUpdateDueCharge(params: params, body: body)
