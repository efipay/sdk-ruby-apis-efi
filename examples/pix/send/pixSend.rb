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
  idEnvio: "0249756789163473799"
}

body = {
  valor: "0.01",
  pagador: {
    chave: "7f4151c7-49a5-4e95-ab24-55bc8f1a2e86"
  },
  favorecido: {
    chave: "10567056635"
  }
}

SdkRubyApisEfi.new(options)
puts efipaypixSend(params: params, body: body)
