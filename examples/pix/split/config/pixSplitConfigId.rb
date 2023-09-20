require 'sdk_ruby_apis_efi'
require_relative "../../../credentials"

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
    id: "de22f661168a4be992952b2e944ce1929"
}

body = {
  descricao: "Batatinha frita 1, 2, 3",
    lancamento: {
        imediato: true
    },
    split: {
        divisaoTarifa: "assumir_total",
        minhaParte: {
            tipo: "porcentagem",
            valor: "60.00"
        },
        repasses: [
            {
                tipo: "porcentagem",
                valor: "15.00",
                favorecido: {
                    cpf: "07590524689",
                    conta: "2871947"
                }
            },
            {
                tipo: "porcentagem",
                valor: "25.00",
                favorecido: {
                    cpf: "13443714692",
                    conta: "2924625"
                }
            }
        ]
    }
}
    
efipay = SdkRubyApisEfi.new(options)
puts efipay.pixSplitConfigId(params: params, body: body)
