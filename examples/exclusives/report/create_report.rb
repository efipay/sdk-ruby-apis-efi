require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

require "uri"
require "net/http"
require "openssl"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  certificate: CREDENTIALS::CERTIFICATE,
  sandbox: CREDENTIALS::SANDBOX
}

body = {
    dataMovimento: "2022-04-24",
    tipoRegistros: {
        pixRecebido: true,
        pixDevolucaoEnviada: false,
        tarifaPixRecebido: true,
        pixEnviadoChave: true,
        pixEnviadoDadosBancarios: false,
        pixDevolucaoRecebida: true
    }
}


efipay = SdkRubyApisEfi.new(options)
puts efipay.create_report(body: body)

