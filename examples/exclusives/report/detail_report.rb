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
  id: "857bd48b-84f4-4f4d-b8e9-327ba033c6b5"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.detail_report(params: params)
