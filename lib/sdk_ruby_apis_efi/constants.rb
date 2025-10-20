module SdkRubyApisEfi
    # Endpoints signatures
    module Constants
        module APIs 
            CHARGES = {
                URL: {
                    production: "https://cobrancas.api.efipay.com.br",
                    sandbox: "https://cobrancas-h.api.efipay.com.br"
                },
                ENDPOINTS: {
                  authorize: {
                      route: "/v1/authorize",
                      method: "post"
                    },
                    createCharge: {
                        route: "/v1/charge",
                        method: "post"
                    },
                    createOneStepCharge: {
                        route: "/v1/charge/one-step",
                        method: "post"
                    },
                    createOneStepChargePartner: {
                        route: "/v1/partner/charge/one-step",
                        method: "post"
                    },
                    detailCharge: {
                        route: "/v1/charge/:id",
                        method: "get"
                    },
                    listCharges: {
                        route: "/v1/charges",
                        method: "get"
                    },
                    updateChargeMetadata: {
                        route: "/v1/charge/:id/metadata",
                        method: "put"
                    },
                    updateBillet: {
                        route: "/v1/charge/:id/billet",
                        method: "put"
                    },
                    definePayMethod: {
                        route: "/v1/charge/:id/pay",
                        method: "post"
                    },
                    definePayMethodPartner: {
                        route: "/v1/partner/charge/:id/pay",
                        method: "post"
                    },
                    cancelCharge: {
                        route: "/v1/charge/:id/cancel",
                        method: "put"
                    },
                    refundCard: {
                        route: "/v1/charge/card/:id/refund",
                        method: "post"
                    },
                    cardPaymentRetry: {
                        route: "/v1/charge/:id/retry",
                        method: "post"
                    },
                    createCarnet: {
                        route: "/v1/carnet",
                        method: "post"
                    },
                    detailCarnet: {
                        route: "/v1/carnet/:id",
                        method: "get"
                    },
                    updateCarnetParcel: {
                        route: "/v1/carnet/:id/parcel/:parcel",
                        method: "put"
                    },
                    updateCarnetParcels: {
                        route: "/v1/carnet/:id/parcels",
                        method: "put"
                    },
                    updateCarnetMetadata: {
                        route: "/v1/carnet/:id/metadata",
                        method: "put"
                    },
                    getNotification: {
                        route: "/v1/notification/:token",
                        method: "get"
                    },
                    listPlans: {
                        route: "/v1/plans",
                        method: "get"
                    },
                    createPlan: {
                        route: "/v1/plan",
                        method: "post"
                    },
                    deletePlan: {
                        route: "/v1/plan/:id",
                        method: "delete"
                    },
                    createSubscription: {
                        route: "/v1/plan/:id/subscription",
                        method: "post"
                    },
                    createOneStepSubscription: {
                        route: "/v1/plan/:id/subscription/one-step",
                        method: "post"
                    },
                    createOneStepSubscriptionLink: {
                        route: "/v1/plan/:id/subscription/one-step/link",
                        method: "post"
                    },
                    detailSubscription: {
                        route: "/v1/subscription/:id",
                        method: "get"
                    },
                    defineSubscriptionPayMethod: {
                        route: "/v1/subscription/:id/pay",
                        method: "post"
                    },
                    cancelSubscription: {
                        route: "/v1/subscription/:id/cancel",
                        method: "put"
                    },
                    updateSubscriptionMetadata: {
                        route: "/v1/subscription/:id/metadata",
                        method: "put"
                    },
                    createSubscriptionHistory: {
                        route: "/v1/subscription/:id/history",
                        method: "post"
                    },
                    sendSubscriptionLinkEmail: {
                        route: "/v1/charge/:id/subscription/resend",
                        method: "post"
                    },
                    getInstallments: {
                        route: "/v1/installments",
                        method: "get"
                    },
                    sendBilletEmail: {
                        route: "/v1/charge/:id/billet/resend",
                        method: "post"
                    },
                    createChargeHistory: {
                        route: "/v1/charge/:id/history",
                        method: "post"
                    },
                    sendCarnetEmail: {
                        route: "/v1/carnet/:id/resend",
                        method: "post"
                    },
                    sendCarnetParcelEmail: {
                        route: "/v1/carnet/:id/parcel/:parcel/resend",
                        method: "post"
                    },
                    createCarnetHistory: {
                        route: "/v1/carnet/:id/history",
                        method: "post"
                    },
                    cancelCarnet: {
                        route: "/v1/carnet/:id/cancel",
                        method: "put"
                    },
                    cancelCarnetParcel: {
                        route: "/v1/carnet/:id/parcel/:parcel/cancel",
                        method: "put"
                    },
                    createOneStepLink: {
                        route: "/v1/charge/one-step/link",
                        method: "post"
                    },
                    defineLinkPayMethod: {
                        route: "/v1/charge/:id/link",
                        method: "post"
                    },
                    updateChargeLink: {
                        route: "/v1/charge/:id/link",
                        method: "put"
                    },
                    sendLinkEmail: {
                        route: "/v1/charge/:id/link/resend",
                        method: "post"
                    },
                    updatePlan: {
                        route: "/v1/plan/:id",
                        method: "put"
                    },
                    updateSubscription: {
                        route: "/v1/subscription/:id",
                        method: "put"
                    },
                    defineBalanceSheetBillet: {
                        route: "/v1/charge/:id/balance-sheet",
                        method: "post"
                    },
                    settleCharge: {
                        route: "/v1/charge/:id/settle",
                        method: "put"
                    },
                    settleCarnet: {
                        route: "/v1/carnet/:id/settle",
                        method: "put"
                    },
                    settleCarnetParcel: {
                        route: "/v1/carnet/:id/parcel/:parcel/settle",
                        method: "put"
                    },
                    listStatementFiles: {
                        route: "/v1/extrato-cnab/arquivos",
                        method: "get"
                    },
                    getStatementFile: {
                        route: "/v1/extrato-cnab/download/:nome_arquivo",
                        method: "get"
                    },
                    listStatementRecurrences: {
                        route: "/v1/extrato-cnab/agendamentos",
                        method: "get"
                    },
                    createStatementRecurrency: {
                        route: "/v1/extrato-cnab/agendar",
                        method: "post"
                    },
                    updateStatementRecurrency: {
                        route: "/v1/extrato-cnab/agendar/:identificador",
                        method: "patch"
                    },
                    createSftpKey: {
                        route: "/v1/extrato-cnab/gerar-chaves",
                        method: "post"
                    }
                }
            }

            PIX = {
                URL: {
                    production: "https://pix.api.efipay.com.br",
                    sandbox: "https://pix-h.api.efipay.com.br"
                },
                ENDPOINTS: {
                  authorize: {
                      route: "/oauth/token",
                      method: "post"
                    },
                    pixConfigWebhook: {
                        route: "/v2/webhook/:chave",
                        method: "put"
                    },
                    pixDetailWebhook: {
                        route: "/v2/webhook/:chave",
                        method: "get"
                    },
                    pixListWebhook: {
                        route: "/v2/webhook",
                        method: "get"
                    },
                    pixDeleteWebhook: {
                        route: "/v2/webhook/:chave",
                        method: "delete"
                    },
                    pixResendWebhook: {
                        route: "/v2/gn/webhook/reenviar",
                        method: "post"
                    },
                    pixConfigWebhookRecurrenceAutomatic: {
                        route: "/v2/webhookrec",
                        method: "put"
                    },
                    pixListWebhookRecurrenceAutomatic: {
                        route: "/v2/webhookrec",
                        method: "get"
                    },
                    pixDeleteWebhookRecurrenceAutomatic: {
                        route: "/v2/webhookrec",
                        method: "delete"
                    },
                    pixConfigWebhookAutomaticCharge: {
                        route: "/v2/webhookcobr",
                        method: "put"
                    },
                    pixListWebhookAutomaticCharge: {
                        route: "/v2/webhookcobr",
                        method: "get"
                    },
                    pixDeleteWebhookAutomaticCharge: {
                        route: "/v2/webhookcobr",
                        method: "delete"
                    },
                    pixCreateCharge: {
                        route: "/v2/cob/:txid",
                        method: "put"
                    },
                    pixCreateImmediateCharge: {
                        route: "/v2/cob",
                        method: "post"
                    },
                    pixDetailCharge: {
                        route: "/v2/cob/:txid",
                        method: "get"
                    },
                    pixUpdateCharge: {
                        route: "/v2/cob/:txid",
                        method: "patch"
                    },
                    pixListCharges: {
                        route: "/v2/cob",
                        method: "get"
                    },
                    pixDevolution: {
                        route: "/v2/pix/:e2eId/devolucao/:id",
                        method: "put"
                    },
                    pixDetailDevolution: {
                        route: "/v2/pix/:e2eId/devolucao/:id",
                        method: "get"
                    },
                    pixSend: {
                        route: "/v2/gn/pix/:idEnvio",
                        method: "put"
                    },
                    pixSendSameOwnership: {
                        route: "/v2/gn/pix/:idEnvio/mesma-titularidade",
                        method: "put"
                    },
                    pixSendDetailId: {
                        route: "/v2/gn/pix/enviados/id-envio/:idEnvio",
                        method: "get"
                    },
                    pixSendDetail: {
                        route: "/v2/gn/pix/enviados/:e2eId",
                        method: "get"
                    },
                    pixSendList: {
                        route: "/v2/gn/pix/enviados",
                        method: "get"
                    },
                    pixQrCodePay: {
                        route: "/v2/gn/pix/:idEnvio/qrcode",
                        method: "put"
                    },
                    pixQrCodeDetail: {
                        route: "/v2/gn/qrcodes/detalhar",
                        method: "post"
                    },
                    pixDetailReceived: {
                        route: "/v2/pix/:e2eId",
                        method: "get"
                    },
                    pixReceivedList: {
                        route: "/v2/pix",
                        method: "get"
                    },
                    pixGenerateQrcode: {
                        route: "/v2/loc/:id/qrcode",
                        method: "get"
                    },
                    pixCreateLocation: {
                        route: "/v2/loc",
                        method: "post"
                    },
                    pixLocationList: {
                        route: "/v2/loc",
                        method: "get"
                    },
                    pixDetailLocation: {
                        route: "/v2/loc/:id",
                        method: "get"
                    },
                    pixUnlinkTxidLocation: {
                        route: "/v2/loc/:id/txid",
                        method: "delete"
                    },
                    pixCreateLocationRecurrenceAutomatic: {
                        route: "/v2/locrec",
                        method: "post"
                    },
                    pixListLocationRecurrenceAutomatic: {
                        route: "/v2/locrec",
                        method: "get"
                    },
                    pixDetailLocationRecurrenceAutomatic: {
                        route: "/v2/locrec/:id",
                        method: "get"
                    },
                    pixUnlinkLocationRecurrenceAutomatic: {
                        route: "/v2/locrec/:id/idRec",
                        method: "delete"
                    },
                    pixCreateEvp: {
                        route: "/v2/gn/evp",
                        method: "post"
                    },
                    pixListEvp: {
                        route: "/v2/gn/evp",
                        method: "get"
                    },
                    pixDeleteEvp: {
                        route: "/v2/gn/evp/:chave",
                        method: "delete"
                    },
                    pixSplitDetailCharge: {
                        route: "/v2/gn/split/cob/:txid",
                        method: "get"
                    },
                    pixSplitLinkCharge: {
                        route: "/v2/gn/split/cob/:txid/vinculo/:splitConfigId",
                        method: "put"
                    },
                    pixSplitUnlinkCharge: {
                        route: "/v2/gn/split/cob/:txid/vinculo/:splitConfigId",
                        method: "delete"
                    },
                    pixSplitDetailDueCharge: {
                        route: "/v2/gn/split/cobv/:txid",
                        method: "get"
                    },
                    pixSplitLinkDueCharge: {
                        route: "/v2/gn/split/cobv/:txid/vinculo/:splitConfigId",
                        method: "put"
                    },
                    pixSplitUnlinkDueCharge: {
                        route: "/v2/gn/split/cobv/:txid/vinculo/:splitConfigId",
                        method: "delete"
                    },
                    pixSplitConfig: {
                        route: "/v2/gn/split/config",
                        method: "post"
                    },
                    pixSplitConfigId: {
                        route: "/v2/gn/split/config/:id",
                        method: "put"
                    },
                    pixSplitDetailConfig: {
                        route: "/v2/gn/split/config/:id",
                        method: "get"
                    },
                    getAccountBalance: {
                        route: "/v2/gn/saldo",
                        method: "get"
                    },
                    updateAccountConfig: {
                        route: "/v2/gn/config",
                        method: "put"
                    },
                    listAccountConfig: {
                        route: "/v2/gn/config",
                        method: "get"
                    },
                    pixCreateDueCharge: {
                        route: "/v2/cobv/:txid",
                        method: "put"
                    },
                    pixUpdateDueCharge: {
                        route: "/v2/cobv/:txid",
                        method: "patch"
                    },
                    pixDetailDueCharge: {
                        route: "/v2/cobv/:txid",
                        method: "get"
                    },
                    pixListDueCharges: {
                        route: "/v2/cobv/",
                        method: "get"
                    },
                    createReport: {
                        route: "/v2/gn/relatorios/extrato-conciliacao",
                        method: "post"
                    },
                    detailReport: {
                        route: "/v2/gn/relatorios/:id",
                        method: "get"
                    },
                    medList: {
                        route: "/v2/gn/infracoes",
                        method: "get"
                    },
                    medDefense: {
                        route: "/v2/gn/infracoes/:idInfracao/defesa",
                        method: "post"
                    },
                    pixKeysBucket: {
                        route: "/v2/gn/chaves/balde",
                        method: "get"
                    },
                    pixGetReceipt: {
                        route: "/v2/gn/pix/comprovantes",
                        method: "get"
                    },
                    pixCreateDueChargeBatch: {
                        route: "/v2/lotecobv/:id",
                        method: "put"
                    },
                    pixUpdateDueChargeBatch: {
                        route: "/v2/lotecobv/:id",
                        method: "patch"
                    },
                    pixDetailDueChargeBatch: {
                        route: "/v2/lotecobv/:id",
                        method: "get"
                    },
                    pixListDueChargeBatch: {
                        route: "/v2/lotecobv",
                        method: "get"
                    },
                    pixDetailRecurrenceAutomatic: {
                        route: "/v2/rec/:idRec",
                        method: "get"
                    },
                    pixUpdateRecurrenceAutomatic: {
                        route: "/v2/rec/:idRec",
                        method: "patch"
                    },
                    pixListRecurrenceAutomatic: {
                        route: "/v2/rec",
                        method: "get"
                    },
                    pixCreateRecurrenceAutomatic: {
                        route: "/v2/rec",
                        method: "post"
                    },
                    pixCreateRequestRecurrenceAutomatic: {
                        route: "/v2/solicrec",
                        method: "post"
                    },
                    pixDetailRequestRecurrenceAutomatic: {
                        route: "/v2/solicrec/:idSolicRec",
                        method: "get"
                    },
                    pixUpdateRequestRecurrenceAutomatic: {
                        route: "/v2/solicrec/:idSolicRec",
                        method: "patch"
                    },
                    pixCreateAutomaticChargeTxid: {
                        route: "/v2/cobr/:txid",
                        method: "put"
                    },
                    pixUpdateAutomaticCharge: {
                        route: "/v2/cobr/:txid",
                        method: "patch"
                    },
                    pixDetailAutomaticCharge: {
                        route: "/v2/cobr/:txid",
                        method: "get"
                    },
                    pixCreateAutomaticCharge: {
                        route: "/v2/cobr",
                        method: "post"
                    },
                    pixListAutomaticCharge: {
                        route: "/v2/cobr",
                        method: "get"
                    },
                    pixRetryRequestAutomatic: {
                        route: "/v2/cobr/:txid/retentativa/:data",
                        method: "post"
                    }
                }
            }
            
            OPEN_FINANCE = {
                URL: {
                    production: "https://openfinance.api.efipay.com.br",
                    sandbox: "https://openfinance-h.api.efipay.com.br"
                },
                ENDPOINTS: {
                    authorize: {
                        route: "/v1/oauth/token",
                        method: "post"
                    },
                    ofConfigUpdate: {
                        route: "/v1/config",
                        method: "put"
                    },
                    ofConfigDetail: {
                        route: "/v1/config",
                        method: "get"
                    },
                    ofListParticipants: {
                        route: "/v1/participantes",
                        method: "get"
                    },
                    ofStartPixPayment: {
                        route: "/v1/pagamentos/pix",
                        method: "post"
                    },
                    ofListPixPayment: {
                        route: "/v1/pagamentos/pix",
                        method: "get"
                    },
                    ofDevolutionPix: {
                        route: "/v1/pagamentos/pix/:identificadorPagamento/devolver",
                        method: "post"
                    },
                    ofCancelSchedulePix: {
                        route: "/v1/pagamentos/pix/:identificadorPagamento/cancelar",
                        method: "patch"
                    },
                    ofListSchedulePixPayment: {
                        route: "/v1/pagamentos-agendados/pix",
                        method: "get"
                    },
                    ofStartSchedulePixPayment: {
                        route: "/v1/pagamentos-agendados/pix",
                        method: "post"
                    },
                    ofDevolutionSchedulePix: {
                        route: " /v1/pagamentos-agendados/pix/:identificadorPagamento/devolver",
                        method: "post"
                    },
                    ofStartRecurrencyPixPayment: {
                        route: "/v1/pagamentos-recorrentes/pix",
                        method: "post"
                    },
                    ofListRecurrencyPixPayment: {
                        route: "/v1/pagamentos-recorrentes/pix",
                        method: "get"
                    },
                    ofCancelRecurrencyPix: {
                        route: "/v1/pagamentos-recorrentes/pix/:identificadorPagamento/cancelar",
                        method: "patch"
                    },
                    ofDevolutionRecurrencyPix: {
                        route: "/v1/pagamentos-recorrentes/pix/:identificadorPagamento/devolver",
                        method: "post"
                    },
                    ofReplaceRecurrencyPixParcel: {
                        route: "/v1/pagamentos-recorrentes/pix/:identificadorPagamento/substituir/:endToEndId",
                        method: "patch"
                    },
                    ofCreateBiometricEnrollment: {
                        route: "/v1/pagamentos-biometria/vinculos",
                        method: "post"
                    },
                    ofListBiometricEnrollment: {
                        route: "/v1/pagamentos-biometria/vinculos",
                        method: "get"
                    },
                    ofRevokeBiometricEnrollment: {
                        route: "/v1/pagamentos-biometria/vinculos",
                        method: "patch"
                    },
                    ofCreateBiometricPixPayment: {
                        route: "/v1/pagamentos-biometria/pix",
                        method: "post"
                    },
                    ofListBiometricPixPayment: {
                        route: "/v1/pagamentos-biometria/pix",
                        method: "get"
                    },
                    ofCreateAutomaticEnrollment: {
                        route: "/v1/pagamentos-automaticos/adesao",
                        method: "post"
                    },
                    ofListAutomaticEnrollment: {
                        route: "/v1/pagamentos-automaticos/adesao",
                        method: "get"
                    },
                    ofUpdateAutomaticEnrollment: {
                        route: "/v1/pagamentos-automaticos/adesao",
                        method: "patch"
                    },
                    ofCreateAutomaticPixPayment: {
                        route: "/v1/pagamentos-automaticos/pix",
                        method: "post"
                    },
                    ofListAutomaticPixPayment: {
                        route: "/v1/pagamentos-automaticos/pix",
                        method: "get"
                    },
                    ofCancelAutomaticPixPayment: {
                        route: "/v1/pagamentos-automaticos/pix",
                        method: "patch"
                    }
                }
            }
            PAYMENTS = { 
                URL: {
                    production: "https://pagarcontas.api.efipay.com.br",
                    sandbox: nil
                },
                ENDPOINTS: {
                    authorize: {
                        route: "/v1/oauth/token",
                        method: "post"
                    },
                    payDetailBarcode: {
                        route: "/v1/codBarras/:codBarras",
                        method: "get"
                    },
                    payRequestBarcode: {
                        route: "/v1/codBarras/:codBarras",
                        method: "post"
                    },
                    payDetailPayment: {
                        route: "/v1/:idPagamento",
                        method: "get"
                    },
                    payListPayments: {
                        route: "/v1/resumo",
                        method: "get"
                    },
                    payConfigWebhook: {
                        route: "/v1/webhook",
                        method: "put"
                    },
                    payDeleteWebhook: {
                        route: "/v1/webhook",
                        method: "delete"
                    },
                    payListWebhook: {
                        route: "/v1/webhook",
                        method: "get"
                    }
                }
            }
            ACCOUNTS_OPENING = {
                URL: {
                    production: "https://abrircontas.api.efipay.com.br",
                    sandbox: "https://abrircontas-h.api.efipay.com.br"
                },
                ENDPOINTS: {
                    authorize: {
                        route: "/v1/oauth/token",
                        method: "post"
                    },
                    createAccount: {
                        route: "/v1/conta-simplificada",
                        method: "post"
                    },
                    getAccountCredentials: {
                        route: "/v1/conta-simplificada/:idContaSimplificada/credenciais",
                        method: "get"
                    },
                    createAccountCertificate: {
                        route: "/v1/conta-simplificada/:idContaSimplificada/certificado",
                        method: "post"
                    },
                    accountConfigWebhook: {
                        route: "/v1/webhook",
                        method: "post"
                    },
                    accountListWebhook: {
                        route: "/v1/webhooks",
                        method: "get"
                    },
                    accountDetailWebhook: {
                        route: "/v1/webhook/:identificadorWebhook",
                        method: "get"
                    },
                    accountDeleteWebhook: {
                        route: "/v1/webhook/:identificadorWebhook",
                        method: "delete"
                    }
                }
            }
        end
    end
end
