require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  inicio: '2024-06-01T00:00:00Z',
  fim: '2024-09-14T23:59:59Z'
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.medList(params: params)
