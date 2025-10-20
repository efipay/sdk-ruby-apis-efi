require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

body = {
  identificadorAdesao: 'urn:efi:19ba4105-9ae2-4637-89f2-96506d3c8770',
  endToEndId: 'E000000000000000000000000',
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.ofCancelAutomaticPixPayment(body: body)
