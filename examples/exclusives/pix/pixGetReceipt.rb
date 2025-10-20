require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  e2eid: 'E0000000000000000000000000000',
# 'txid': '0000000000000000000000000000000',
# 'idEnvio': '0000000000000000000000000000000',
# 'rtrId':'D0000000000000000000000000000'
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixGetReceipt(params: params)
