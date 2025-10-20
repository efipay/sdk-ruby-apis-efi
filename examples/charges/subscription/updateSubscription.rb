require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 1
}

body = {
    plan_id: 3,       
    customer: {
        email: "gorbadoc.oldbuck@gmail.com",
        phone_number: "31123456789"
    },
    items: [{
        name: "Product 1",
        value: 1000,
        amount: 1
    }],
    shippings: [{
        name: "frete",
        value: 1800
    }]
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.updateSubscription(params: params, body: body)
