require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
    inicio: '2020-01-01T00:00:00Z',
    fim: '2024-12-01T23:59:59Z',
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixListDueChargeBatch(params: params)
