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
    identificadorVinculo: 'enrollmentId',
    favorecido: {
        contaBanco: {
            nome: 'GORBADOCK SILVA',
            documento: '01234567890',
            codigoBanco: '09089356',
            agencia: '0001',
            conta: '654984',
            tipoConta: 'TRAN' 
        }
    },
    pagamento: {
        valor: '250.00'
  }
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.ofCreateBiometricPixPayment(headers: headers, body: body)
