require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  dataInicio: '2024-01-22T16:01:35Z',
  dataFim: '2024-09-22T16:01:35Z'
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.payListWebhook(params: params)
