require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
    inicio: '2022-03-22T00:00:00.000Z',
    fim: '2023-03-31T00:00:00.000Z',
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixListLocationRecurrenceAutomatic(params: params)
