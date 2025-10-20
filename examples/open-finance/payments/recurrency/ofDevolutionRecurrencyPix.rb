require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  identificadorPagamento: ''
}

body = {
    endToEndId: '',    
    valor: '0.01'
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.ofDevolutionRecurrencyPix(params: params, body: body)
