require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 1
}

body = {  
    descricao: 'Cobranças dos alunos do turno vespertino',
    cobsv: [
    {
      calendario: {
          dataDeVencimento: '2024-11-28',
          validadeAposVencimento: 30
      },
      txid: 'fb2761260e55ood593c7926bjb5cb650',
      devedor: {
          cpf: '01234567890',
          nome: 'João Souza'
      },
      valor: {
          original: '100.50'
      },
      chave: 'a572c113-7d13-49ba-9988-0yy7e061a356',
      solicitacaoPagador: 'Informar matrícula'
      },
      {
      calendario: {
          dataDeVencimento: '2020-12-31',
          validadeAposVencimento: 30
      },
      txid: '7978c0c97ea84ppe78e8849634473c9f1',
      devedor: {
          cpf: '15311295449',
          nome: 'Manoel Silva'
      },
      valor: {
          original: '100.50'
      },
      chave: 'a572c113-7d13-49ba-9988-0yy7e061a356',
      solicitacaoPagador: 'Informar matrícula'
    }
  ]
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixCreateDueChargeBatch(params: params, body: body)
