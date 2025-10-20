require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

body = {
    url: ''
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.payConfigWebhook(body: body)