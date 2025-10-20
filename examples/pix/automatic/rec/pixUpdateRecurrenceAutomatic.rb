require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
    idRec: ''
}

body = {
  loc: 108,
  vinculo: {
    devedor: {
      nome: 'Fulano de Tal'
    }
  },
  calendario: {
    dataInicial: '2024-04-01'
  },
  ativacao: {
    dadosJornada: {
      txid: '33beb661beda44a8928fef47dbeb2dc5'
    }
  }
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixUpdateRecurrenceAutomatic(params: params, body: body)
