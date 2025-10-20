require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
    identificador: 'diario' # "diario", "semanal", "mensal"
}

body = {  
    periodicidade: 'diario',
    status: 'ativo',
    envia_email: True,
    comprimir_arquivos: True
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.updateStatementRecurrency(params: params, body: body)
