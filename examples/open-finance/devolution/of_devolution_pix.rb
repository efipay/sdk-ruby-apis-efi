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
    identificadorPagamento : "urn:partcipant:00000000-0000-0000-0000-000000000000",
}

body = {
    valor : "0.01",
}

gn = Gerencianet.new(options)
puts gn.of_devolution_pix(params: params, body: body)