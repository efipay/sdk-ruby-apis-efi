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
    pix: {
        receberSemChave: true,
        chaves: {
            "sua_chave": {
                recebimento: {
                    txidObrigatorio: true,
                    qrCodeEstatico: {
                        recusarTodos: false
                    }
                }
            }
        }
    }
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.update_account_config(body: body)

