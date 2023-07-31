require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 35175757
}

body = {
  notification_url: "http://yourdomain.com",
  custom_id: "my_new_id"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.update_carnet_metadata(params: params, body: body)
