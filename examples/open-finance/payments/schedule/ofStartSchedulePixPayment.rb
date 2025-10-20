require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

body = {
    pagador: {
        idParticipante: '75db457a-612d-4d62-b557-ba9d32b05216',
        cpf: '45204392050',
        cnpj: '90293071000112'
    },
    favorecido: {
        contaBanco: {
            nome: 'Lucas Silva',
            documento: '17558266300',
            codigoBanco: '09089356',
            agencia: '0001',
            conta: '654984',
            tipoConta: 'CACC'
        }
    },
    pagamento: {
        valor: '9.99',
        codigoCidadeIBGE: '3540000',
        infoPagador: 'Churrasco',
        idProprio: '6236574863254',
        dataAgendamento: '2024-08-06'
    }
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.ofStartSchedulePixPayment(body: body)
