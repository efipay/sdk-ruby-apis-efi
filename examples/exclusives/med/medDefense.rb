require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  idInfracao: '00000000-0000-0000-0000-000000000000'
}

body = {
    analise: 'aceito',    
    justificativa: 'Justificativa'
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.medDefense(params: params, body: body)
