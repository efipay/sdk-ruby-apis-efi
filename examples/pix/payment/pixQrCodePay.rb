require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  idEnvio: 1
}

body = {  
    pagador: {
        chave: 'a1f4102e-a446-4a57-bcce-6fa48899c1d1',
        infoPagador: 'Pagamento de QR Code via API Pix'
    },
    pixCopiaECola: '00020101021226830014BR.GOV.BCB.PIX2561qrcodespix.sejaefi.com.br/v2 41e0badf811a4ce6ad8a80b306821fce5204000053000065802BR5905EFISA6008SAOPAULO60070503***61040000'
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixQrCodePay(params: params, body: body)
