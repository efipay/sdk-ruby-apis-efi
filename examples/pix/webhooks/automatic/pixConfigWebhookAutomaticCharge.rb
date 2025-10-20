require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

headers = {
  'x-skip-mtls-checking': 'true'
}

body = {  
    webhookUrl: 'https://usuario.recebedor.com/api/webhookrec/'
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.pixConfigWebhookAutomaticCharge(headers: headers, body: body)
