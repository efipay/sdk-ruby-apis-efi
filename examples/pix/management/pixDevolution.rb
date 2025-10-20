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
    e2eId: "E18236120202104211819s03585605TS",
    id: "7a71c4453c4840c6abc18d23467f58db"
}

body = {
    valor: "0.01"
}


efipay = SdkRubyApisEfi.new(options)
puts efipay.pixDevolution(params: params, body: body)

