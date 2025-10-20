require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  inicio: '2022-05-01',
  fim: '2024-05-01'
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.ofListSchedulePixPayment(params: params)
