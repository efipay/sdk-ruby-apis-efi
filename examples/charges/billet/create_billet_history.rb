require_relative "gerencianet-1.1.2/lib/gerencianet.rb"
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 1000
}

body = {
  description: "This charge was not fully paid"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.create_charge_history(params: params, body: body)
