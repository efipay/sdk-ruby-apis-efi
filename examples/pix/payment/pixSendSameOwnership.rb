require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  idEnvio: ''
}

body = {  
    valor: '12.34',
    pagador: {
        chave: '19974764017',
        infoPagador: 'Segue o pagamento da conta'
    },
    favorecido: {
        chave: 'joão@meuemail.com'
    }
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixSendSameOwnership(params: params, body: body)
