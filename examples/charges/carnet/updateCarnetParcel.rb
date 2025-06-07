# frozen_string_literal: true

require "sdk_ruby_apis_efi"
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 34_779_162,
  parcel: 2
}

body = {
  expire_at: "2023-12-12"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.updateCarnetParcel(params: params, body: body)
