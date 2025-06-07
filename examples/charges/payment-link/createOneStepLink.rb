# frozen_string_literal: true

require "sdk_ruby_apis_efi"
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

body = {
  items: [{
    name: "Product 1",
    value: 1000,
    amount: 2
  }],
  settings: {
    payment_method: "all",
    billet_discount: 10,
    card_discount: 10,
    expire_at: "2022-12-30",
    request_delivery_address: false
  }
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.createOneStepLink(body: body)
