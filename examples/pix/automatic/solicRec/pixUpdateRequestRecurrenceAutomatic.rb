require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
    idSolicRec: ''
}

body = {
    status: 'CANCELADA'
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixUpdateRequestRecurrenceAutomatic(params: params, body: body)
