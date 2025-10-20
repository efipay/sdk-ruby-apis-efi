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
  parcels: [
      {
          parcel: 1,
          expire_at: "2024-01-10"
      },
    {
          parcel: 2,
          expire_at: "2024-02-11"
      },
    {
          parcel: 3,
          expire_at: "2024-03-15"
      },
    {
          parcel: 4,
          expire_at: "2024-04-19"
      }
  ]
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.updateCarnetParcels(params: params, body: body)
