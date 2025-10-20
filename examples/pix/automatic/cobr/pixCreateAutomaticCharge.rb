require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

body = {
  idRec: 'RR1234567820240115abcdefghijk',
  infoAdicional: 'Serviços de Streamming de Música e Filmes.',
  calendario: {
    dataDeVencimento: '2025-06-15'
  },
  valor: {
    original: '106.07'
  },
  ajusteDiaUtil: True,
  devedor: {
    cep: '89256140',
    cidade: 'Uberlândia',
    email: 'abc.sebaastiao.tavares@mail.com',
    logradouro: 'Alameda Silva 1056',
    uf: 'MG'
  },
  recebedor: {
    agencia: '9708',
    conta: '012682',
    tipoConta: 'CORRENTE'
  }
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixCreateAutomaticCharge(body: body)
