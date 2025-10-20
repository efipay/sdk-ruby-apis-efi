require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
   inicio: '2025-06-12T16:01:35Z',
   fim: '2025-12-23T16:01:35Z',
#    idRec: '',
#    cpf: '',
#    cnpj: '',
#    locationPresente: # True or False,
#    status: '',
#    convenio: '',
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixListAutomaticCharge(params: params)
