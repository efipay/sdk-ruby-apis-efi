require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

body = {
  idRec: 'RN123456782024011577825445612',
  calendario: {
    dataExpiracaoSolicitacao: '2025-05-20T12:17:11.926Z'
  },
  destinatario: {
    agencia: '2569',
    conta: '550689',
    cpf: '12345678909',
    ispbParticipante: '91193552'
  }
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixCreateRequestRecurrenceAutomatic(body: body)
