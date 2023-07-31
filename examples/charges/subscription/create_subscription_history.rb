require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 1000
}

body = {
  description: "This subscription is about a service"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.create_subscription_history(params: params, body: body)
