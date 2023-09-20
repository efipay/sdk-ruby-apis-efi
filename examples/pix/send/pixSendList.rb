require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

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
  inicio: "2023-01-22T16:01:35Z",
  fim: "2023-04-23T16:01:35Z"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixSendList(params: params)
