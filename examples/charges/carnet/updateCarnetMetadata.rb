# frozen_string_literal: true

require "sdk_ruby_apis_efi"
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 35_175_757
}

body = {
  notification_url: "http://yourdomain.com",
  custom_id: "my_new_id"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.updateCarnetMetadata(params: params, body: body)
