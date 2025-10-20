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
    identificadorVinculo: 'urn:efi:ae71713f-875b-4af3-9d85-0bcb43288847',
    motivo: 'Encerramento de contrato de vinculo'
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.ofRevokeBiometricEnrollment(headers: headers, body: body)
