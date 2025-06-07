# frozen_string_literal: true

require "sdk_ruby_apis_efi"
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 993_249
}

body = {
  payment: {
    banking_billet: {
      expire_at: "2023-12-12",
      customer: {
        name: "Gorbadoc Oldbuck",
        cpf: "94271564656",
        phone_number: "5144916523"
      }
    }
  }
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.defineSubscriptionPayMethod(params: params, body: body)
