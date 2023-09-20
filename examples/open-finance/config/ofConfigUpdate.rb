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

body = {
  redirectURL: "https://gerencianet.com.br",
  webhookURL: "https://gerencianetwh.tk/webhook"
}

puts gn.of_config_update(body: body)