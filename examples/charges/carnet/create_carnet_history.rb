require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 35175757
}

body = {
  description: "This carnet is about a service"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.create_carnet_history(params: params, body: body)
