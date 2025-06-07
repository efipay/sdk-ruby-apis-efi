# frozen_string_literal: true

require "sdk_ruby_apis_efi"
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 993_250
}

body = {
  payment: {
    credit_card: {
      payment_token: "e0c210bb679fea225a586256234f8ce179fd16c5",
      billing_address: {
        street: "Av. JK",
        number: 909,
        neighborhood: "Bauxita",
        zipcode: "35400000",
        city: "Ouro Preto",
        state: "MG"
      },
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
puts efipay.defineSubscriptionPayMethod(params: params, body: body)
