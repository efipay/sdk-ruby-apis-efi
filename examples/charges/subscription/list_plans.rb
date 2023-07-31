require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  name: "My Plan",
  limit: 1,
  offset: 0
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.list_plans(params: params)
