require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 508222357
}

body = {
  email: 'oldbuck@gerencianet.com.br' 
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.sendBilletEmail(params: params, body: body)
