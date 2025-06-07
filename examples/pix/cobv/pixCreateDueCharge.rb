# frozen_string_literal: true

require "sdk_ruby_apis_efi"
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
  calendario: {
    dataDeVencimento: "2023-03-01",
    validadeAposVencimento: 30
  },
  devedor: {
    logradouro: "Alameda Souza, Numero 80, Bairro Braz",
    cidade: "Recife",
    uf: "PE",
    cep: "70011750",
    cpf: "12345678909",
    nome: "Francisco da Silva"
  },
  valor: {
    original: "100.01",
    multa: {
      modalidade: 2,
      valorPerc: "15.00"
    },
    juros: {
      modalidade: 2,
      valorPerc: "2.00"
    },
    desconto: {
      modalidade: 1,
      descontoDataFixa: [
        {
          data: "2022-11-30",
          valorPerc: "30.00"
        }
      ]
    }
  },
  chave: "7f4151c7-49a5-4e95-ab24-55bc8f1a2e86",
  solicitacaoPagador: "Cobrança dos serviços prestados."
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixCreateDueCharge(params: params, body: body)
