require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

require "uri"
require "net/http"
require "openssl"

#verificar o mtls

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  certificate: CREDENTIALS::CERTIFICATE,
  sandbox: CREDENTIALS::SANDBOX,
  "x-skip-mtls-checking": "true"
}


params = {
    chave: "7f4151c7-49a5-4e95-ab24-55bc8f1a2e86"
}

body = {
    webhookUrl: "https://webhook.site/c1f56ce5-404d-4863-a895-b026f9c0f63a"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixConfigWebhook(params: params, body: body)
