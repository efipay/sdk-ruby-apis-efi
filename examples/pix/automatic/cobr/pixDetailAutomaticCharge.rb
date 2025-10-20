require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
    txid: 'fc9a4366jf3d4964b5dba6c91a8722d3'
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixDetailAutomaticCharge(params: params)
