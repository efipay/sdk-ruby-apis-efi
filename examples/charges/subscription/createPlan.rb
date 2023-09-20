require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

body = {
  name: "My first plan",
  repeats: 24,
  interval: 2
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.createPlan(body: body)
