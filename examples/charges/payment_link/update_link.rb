require 'sdk_ruby_apis_efi'
require "date"
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

expireAt = Date.today + 3

params = {
  id: 508246274
}

body = {
  billet_discount: 10,
  card_discount: 10,
  message: "",
  expire_at: "2023-01-30",
  request_delivery_address: false,
  payment_method: "all"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.update_charge_link(params: params, body: body)
