require 'sdk_ruby_apis_efi'
require_relative "../../../credentials"

require "uri"
require "net/http"
require "openssl"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  certificate: CREDENTIALS::CERTIFICATE,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: "b5150d7ecd9b43e3b2d2dba0a9086ed4"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixSplitDetailConfig(params: params)

