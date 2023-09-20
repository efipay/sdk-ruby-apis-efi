require 'sdk_ruby_apis_efi'
require "date"
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 508246274
}

body = {
  billet_discount: 10,
  card_discount: 10,
  message: "",
  expire_at: "2022-12-30",
  request_delivery_address: false,
  payment_method: "all"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.defineLinkPayMethod(params: params, body: body)