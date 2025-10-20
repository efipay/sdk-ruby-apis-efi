require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
    charge_type: 'carnet',
    begin_date: '2025-09-01',
    end_date: '2026-09-01'
    # "customer_document": ""
    # "status": ""
    # "custom_id": ""
    # "value": 
    # "date_of": ""
    # "limit": 
    # "page": 
    # "offset": 
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.listCharges(params: params)
