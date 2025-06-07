# frozen_string_literal: true

require "sdk_ruby_apis_efi"
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

params = {
  id: "555"
}

gerencianet = Gerencianet.new(options)
response =  JSON.parse(gerencianet.pix_generate_qrcode(params: params))
puts response["qrcode"]

data = response["imagemQrcode"]
image_data = Base64.decode64(data["data:image/png;base64,".length..])
new_file = File.new("../../../qrCodeImage.png", "wb") # salva a imagem do qrcode no diretório raiz
new_file.write(image_data)
