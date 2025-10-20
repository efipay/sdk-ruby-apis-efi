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
    pagador: {
        cpf: '01234567890',
        idParticipante: '9326f9b2-ae57-42c4-a0d9-acc4ba434696'
    }
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.ofCreateBiometricEnrollment(headers: headers, body: body)
