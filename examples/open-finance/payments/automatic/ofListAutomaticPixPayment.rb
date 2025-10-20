require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  identificadorAdesao: 'urn:efi:49315a93-d39c-4564-9yyb-9a73678dbdb1',
  endToEndId: 'E00038166201907261559y6j6',
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.ofListAutomaticPixPayment(params: params)
