require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  inicio: '2024-06-01',
  fim: '2024-09-14'
# status: ''          #Enum: pendente, rejeitado, aceito, expirado, cancelado
# identificador: ''   #Exemplo : urn:efi:49315a93-d39c-4564-9edb-9a73678dbdb1
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.ofListBiometricPixPayment(params: params)
