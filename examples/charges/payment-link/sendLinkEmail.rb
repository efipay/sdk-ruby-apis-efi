# frozen_string_literal: true

require "sdk_ruby_apis_efi"
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

params = {
  id: 508_246_274
}

body = {
  email: "oldbuck@gerencianet.com.br"
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.sendLinkEmail(params: params, body: body)
