# frozen_string_literal: true

require "sdk_ruby_apis_efi"
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 94_641
}

body = {
  items: [{
    name: "Product 1",
    value: 1000,
    amount: 2
  }],
  payment: {
    banking_billet: {
      expire_at: "2022-12-30",
      customer: {
        name: "Gorbadoc Oldbuck",
        email: "oldbuck@gerencianet.com.br",
        cpf: "94271564656",
        birth: "1977-01-15",
        phone_number: "5144916523"
      }
    }
  }
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.createOneStepSubscription(params: params, body: body)
