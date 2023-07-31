require 'sdk_ruby_apis_efi'
require "date"
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}


body = {
  expire_at: "2022-12-30",
  items: [{
    name: "Carnet Item 1",
    value: 1000,
    amount: 2
  }],
  customer: {
    name: "Gorbadoc Oldbuck",
    email: "oldbuck@gerencianet.com.br",
    cpf: "94271564656",
    birth: "1977-01-15",
    phone_number: "5144916523"
  },
  repeats: 3,
  split_items: false
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.create_carnet(body: body)
