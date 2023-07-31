require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 94641
}

body = {
  name: "My new plan"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.update_plan(params: params, body: body)
