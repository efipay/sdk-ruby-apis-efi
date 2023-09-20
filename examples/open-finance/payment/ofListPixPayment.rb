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

gn = Gerencianet.new(options)

params = { 
    inicio: "2023-01-01",
    fim: "2023-12-31"
}

puts gn.of_list_pix_payment(params: params)