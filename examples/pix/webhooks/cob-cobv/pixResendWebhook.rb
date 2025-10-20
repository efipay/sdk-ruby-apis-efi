require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

body = {  
    tipo: 'PIX_RECEBIDO', #PIX_RECEBIDO, PIX_ENVIADO, DEVOLUCAO_RECEBIDA, DEVOLUCAO_ENVIADA
    e2eids: [
        'E09089356202412261300API229e5352',
        'E09089356202412261300API3149af57'
    ]
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixResendWebhook(body: body)
