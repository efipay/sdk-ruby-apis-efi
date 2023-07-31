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
  txid: "7978c0c97ea847e78e8849634473c1f1"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pix_split_detail_charge(params: params)
