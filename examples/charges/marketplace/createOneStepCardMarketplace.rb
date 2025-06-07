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
    amount: 2,
    marketplace: {
      repasses: [{
        payee_code: "Insira_aqui_o_indentificador_da_conta_destino",
        percentage: 2500
      }, {
        payee_code: "Insira_aqui_o_indentificador_da_conta_destino",
        percentage: 1500
      }]
    }
  }],
  shippings: [{
    name: "Default Shipping Cost",
    value: 100
  }],
  payment: {
    credit_card: {
      installments: 1,
      payment_token: "InsiraAquiOPayment_token",
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
puts efipay.createOneStepCharge(body: body)
