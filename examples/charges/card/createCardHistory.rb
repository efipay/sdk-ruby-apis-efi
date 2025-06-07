# frozen_string_literal: true

require "sdk_ruby_apis_efi"
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 297_354_208
}

body = {
  description: "This charge was not fully paid"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.createChargeHistory(params: params, body: body)
