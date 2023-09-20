require 'sdk_ruby_apis_efi'
require "date"
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

tomorrow = Date.today + 1

params = {
  id: 508224752 
}

body = {
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
puts efipay.definePayMethod(params: params, body: body)
