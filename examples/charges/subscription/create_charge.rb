require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 94641
}

body = {
  items: [{
    name: "Product 2",
    value: 1000,
    amount: 2
  }],
  shippings: [{
    name: "Default Shipping Cost",
    value: 100
  }]
}


efipay = SdkRubyApisEfi.new(options)
puts efipay.create_subscription(params: params, body: body)

