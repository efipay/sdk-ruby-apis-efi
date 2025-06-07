# frozen_string_literal: true

require "sdk_ruby_apis_efi"
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  brand: "visa",
  total: 5000
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.getInstallments(params: params)
