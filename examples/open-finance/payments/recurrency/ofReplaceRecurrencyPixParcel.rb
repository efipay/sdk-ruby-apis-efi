require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  identificadorPagamento: '',
  endToEndId: ''
}

body = {  
    valor: '9.99'
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.ofReplaceRecurrencyPixParcel(params: params, body: body)
