require 'sdk_ruby_apis_efi'
require_relative "../../credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

body = {
    pagador: {
        idParticipante: 'e69c25b5-c63a-4c25-8564-81f57436481c',
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
        valor: '9.90',
        codigoCidadeIBGE: '3540000',
        infoPagador: 'Churrasco',
        idProprio: '6236574863254',
        recorrencia: {
            tipo: 'diaria',
            dataInicio: '2025-12-31',
            quantidade: 2,
            diaDaSemana: 'SEGUNDA_FEIRA',
            diaDoMes: 15,
            datas: [
                '2024-08-01',
                '2024-08-08',
                '2024-08-15'
            ],
            descricao: 'Petshop'
        }
    }
}

efipay = SdkRubyApisEfi.new(options)
puts efipay.ofStartRecurrencyPixPayment(body: body)
