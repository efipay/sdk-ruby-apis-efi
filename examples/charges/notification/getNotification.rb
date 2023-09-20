require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  token: "c921ba38-3daa-4376-9737-1fd40a4aeb4e"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.getNotification(params: params)
