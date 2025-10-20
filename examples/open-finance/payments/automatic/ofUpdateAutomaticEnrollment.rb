require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

headers = {
  'x-idempotency-key': 'et sedaute sint officiapariatur amet tute sum'
}

body = {  
    identificador: 'urn:efi:19ba4105-9ae2-4637-89f2-96506d3c8770',
    nomeFavorecido: 'Marco Antonio de Brito',
    status: 'revogado',
    dataExpiracao: '2021-05-21',
    valorMaximo: '4.22'
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.ofUpdateAutomaticEnrollment(headers: headers, body: body)
