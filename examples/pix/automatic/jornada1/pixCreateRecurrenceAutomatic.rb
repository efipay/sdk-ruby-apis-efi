require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

body = {
  vinculo: {
    contrato: '63100862',
    devedor: {
      cpf: '12345678909',
      nome: 'Francisco da Silva'
    },
    objeto: 'Serviço de Streamming de Música.'
  },
  calendario: {
    dataFinal: '2026-04-01',
    dataInicial: '2025-06-01',
    periodicidade: 'MENSAL'
  },
  valor: {
    valorRec: '35.00'
  },
  politicaRetentativa: 'NAO_PERMITE',
  loc: 108,
  ativacao: {
    dadosJornada: {
      txid: '33beb661beda44a8928fef47dbeb2dc5'
    }
  }
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixCreateRecurrenceAutomatic(body: body)
