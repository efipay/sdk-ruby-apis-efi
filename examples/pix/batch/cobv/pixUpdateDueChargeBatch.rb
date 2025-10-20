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
    cobsv: [
    {
      calendario: {
          dataDeVencimento: '2025-01-10'
      },
      txid: 'fb2761260e554ad593c7226beb5cb650',
      valor: {
          original: '110.00'
      },
      },
      {
      calendario: {
          dataDeVencimento: '2020-01-10',
      },
      txid: '7978c0c97ea847e78e8849634473c1f1',
      valor: {
          original: '110.00'
      }
    }
  ]
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixUpdateDueChargeBatch(params: params, body: body)
