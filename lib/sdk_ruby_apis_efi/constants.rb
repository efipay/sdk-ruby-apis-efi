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
                    create_charge: {
                        route: "/v1/charge",
                        method: "post"
                    },
                    create_one_step_charge: {
                        route: "/v1/charge/one-step",
                        method: "post"
                    },
                    create_one_step_charge_partner: {
                        route: "/v1/partner/charge/one-step",
                        method: "post"
                    },
                    detail_charge: {
                        route: "/v1/charge/:id",
                        method: "get"
                    },
                    update_charge_metadata: {
                        route: "/v1/charge/:id/metadata",
                        method: "put"
                    },
                    update_billet: {
                        route: "/v1/charge/:id/billet",
                        method: "put"
                    },
                    define_pay_method: {
                        route: "/v1/charge/:id/pay",
                        method: "post"
                    },
                    define_pay_method_partner: {
                        route: "/v1/partner/charge/:id/pay",
                        method: "post"
                    },
                    cancel_charge: {
                        route: "/v1/charge/:id/cancel",
                        method: "put"
                    },
                    create_carnet: {
                        route: "/v1/carnet",
                        method: "post"
                    },
                    detail_carnet: {
                        route: "/v1/carnet/:id",
                        method: "get"
                    },
                    update_carnet_parcel: {
                        route: "/v1/carnet/:id/parcel/:parcel",
                        method: "put"
                    },
                    update_carnet_metadata: {
                        route: "/v1/carnet/:id/metadata",
                        method: "put"
                    },
                    get_notification: {
                        route: "/v1/notification/:token",
                        method: "get"
                    },
                    list_plans: {
                        route: "/v1/plans",
                        method: "get"
                    },
                    create_plan: {
                        route: "/v1/plan",
                        method: "post"
                    },
                    delete_plan: {
                        route: "/v1/plan/:id",
                        method: "delete"
                    },
                    create_subscription: {
                        route: "/v1/plan/:id/subscription",
                        method: "post"
                    },
                    create_one_step_subscription: {
                        route: "/v1/plan/:id/subscription/one-step",
                        method: "post"
                    },
                    create_one_step_subscription_link: {
                        route: "/v1/plan/:id/subscription/one-step/link",
                        method: "post"
                    },
                    detail_subscription: {
                        route: "/v1/subscription/:id",
                        method: "get"
                    },
                    define_subscription_pay_method: {
                        route: "/v1/subscription/:id/pay",
                        method: "post"
                    },
                    cancel_subscription: {
                        route: "/v1/subscription/:id/cancel",
                        method: "put"
                    },
                    update_subscription_metadata: {
                        route: "/v1/subscription/:id/metadata",
                        method: "put"
                    },
                    create_subscription_history: {
                        route: "/v1/subscription/:id/history",
                        method: "post"
                    },
                    send_subscription_link_email: {
                        route: "/v1/charge/:id/subscription/resend",
                        method: "post"
                    },
                    get_installments: {
                        route: "/v1/installments",
                        method: "get"
                    },
                    send_billet_email: {
                        route: "/v1/charge/:id/billet/resend",
                        method: "post"
                    },
                    create_charge_history: {
                        route: "/v1/charge/:id/history",
                        method: "post"
                    },
                    send_carnet_email: {
                        route: "/v1/carnet/:id/resend",
                        method: "post"
                    },
                    send_carnet_parcel_email: {
                        route: "/v1/carnet/:id/parcel/:parcel/resend",
                        method: "post"
                    },
                    create_carnet_history: {
                        route: "/v1/carnet/:id/history",
                        method: "post"
                    },
                    cancel_carnet: {
                        route: "/v1/carnet/:id/cancel",
                        method: "put"
                    },
                    cancel_carnet_parcel: {
                        route: "/v1/carnet/:id/parcel/:parcel/cancel",
                        method: "put"
                    },
                    create_one_step_link: {
                        route: "/v1/charge/one-step/link",
                        method: "post"
                    },
                    define_link_pay_method: {
                        route: "/v1/charge/:id/link",
                        method: "post"
                    },
                    update_charge_link: {
                        route: "/v1/charge/:id/link",
                        method: "put"
                    },
                    send_link_email: {
                        route: "/v1/charge/:id/link/resend",
                        method: "post"
                    },
                    update_plan: {
                        route: "/v1/plan/:id",
                        method: "put"
                    },
                    define_balance_sheet_billet: {
                        route: "/v1/charge/:id/balance-sheet",
                        method: "post"
                    },
                    settle_charge: {
                        route: "/v1/charge/:id/settle",
                        method: "put"
                    },
                    settle_carnet: {
                        route: "/v1/carnet/:id/settle",
                        method: "put"
                    },
                    settle_carnet_parcel: {
                        route: "/v1/carnet/:id/parcel/:parcel/settle",
                        method: "put"
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
                    pix_config_webhook: {
                        route: "/v2/webhook/:chave",
                        method: "put"
                    },
                    pix_detail_webhook: {
                        route: "/v2/webhook/:chave",
                        method: "get"
                    },
                    pix_list_webhook: {
                        route: "/v2/webhook",
                        method: "get"
                    },
                    pix_delete_webhook: {
                        route: "/v2/webhook/:chave",
                        method: "delete"
                    },
                    pix_create_charge: {
                        route: "/v2/cob/:txid",
                        method: "put"
                    },
                    pix_create_immediate_charge: {
                        route: "/v2/cob",
                        method: "post"
                    },
                    pix_detail_charge: {
                        route: "/v2/cob/:txid",
                        method: "get"
                    },
                    pix_update_charge: {
                        route: "/v2/cob/:txid",
                        method: "patch"
                    },
                    pix_list_charges: {
                        route: "/v2/cob",
                        method: "get"
                    },
                    pix_devolution: {
                        route: "/v2/pix/:e2eId/devolucao/:id",
                        method: "put"
                    },
                    pix_detail_devolution: {
                        route: "/v2/pix/:e2eId/devolucao/:id",
                        method: "get"
                    },
                    pix_send: {
                        route: "/v2/gn/pix/:idEnvio",
                        method: "put"
                    },
                    pix_send_detail: {
                        route: "/v2/gn/pix/enviados/:e2eId",
                        method: "get"
                    },
                    pix_send_list: {
                        route: "/v2/gn/pix/enviados",
                        method: "get"
                    },
                    pix_detail_received: {
                        route: "/v2/pix/:e2eId",
                        method: "get"
                    },
                    pix_received_list: {
                        route: "/v2/pix",
                        method: "get"
                    },
                    pix_generate_qrcode: {
                        route: "/v2/loc/:id/qrcode",
                        method: "get"
                    },
                    pix_create_location: {
                        route: "/v2/loc",
                        method: "post"
                    },
                    pix_location_list: {
                        route: "/v2/loc",
                        method: "get"
                    },
                    pix_detail_location: {
                        route: "/v2/loc/:id",
                        method: "get"
                    },
                    pix_unlink_txid_location: {
                        route: "/v2/loc/:id/txid",
                        method: "delete"
                    },
                    pix_create_evp: {
                        route: "/v2/gn/evp",
                        method: "post"
                    },
                    pix_list_evp: {
                        route: "/v2/gn/evp",
                        method: "get"
                    },
                    pix_delete_evp: {
                        route: "/v2/gn/evp/:chave",
                        method: "delete"
                    },
                    pix_split_detail_charge: {
                        route: "/v2/gn/split/cob/:txid",
                        method: "get"
                    },
                    pix_split_link_charge: {
                        route: "/v2/gn/split/cob/:txid/vinculo/:splitConfigId",
                        method: "put"
                    },
                    pix_split_unlink_charge: {
                        route: "/v2/gn/split/cob/:txid/vinculo/:splitConfigId",
                        method: "delete"
                    },
                    pix_split_detail_due_charge: {
                        route: "/v2/gn/split/cobv/:txid",
                        method: "get"
                    },
                    pix_split_link_due_charge: {
                        route: "/v2/gn/split/cobv/:txid/vinculo/:splitConfigId",
                        method: "put"
                    },
                    pix_split_unlink_due_charge: {
                        route: "/v2/gn/split/cobv/:txid/vinculo/:splitConfigId",
                        method: "delete"
                    },
                    pix_split_config: {
                        route: "/v2/gn/split/config",
                        method: "post"
                    },
                    pix_split_config_id: {
                        route: "/v2/gn/split/config/:id",
                        method: "put"
                    },
                    pix_split_detail_config: {
                        route: "/v2/gn/split/config/:id",
                        method: "get"
                    },
                    get_account_balance: {
                        route: "/v2/gn/saldo",
                        method: "get"
                    },
                    update_account_config: {
                        route: "/v2/gn/config",
                        method: "put"
                    },
                    list_account_config: {
                        route: "/v2/gn/config",
                        method: "get"
                    },
                    pix_create_due_charge: {
                        route: "/v2/cobv/:txid",
                        method: "put"
                    },
                    pix_update_due_charge: {
                        route: "/v2/cobv/:txid",
                        method: "patch"
                    },
                    pix_detail_due_charge: {
                        route: "/v2/cobv/:txid",
                        method: "get"
                    },
                    pix_list_due_charges: {
                        route: "/v2/cobv/",
                        method: "get"
                    },
                    create_report: {
                        route: "/v2/gn/relatorios/extrato-conciliacao",
                        method: "post"
                    },
                    detail_report: {
                        route: "/v2/gn/relatorios/:id",
                        method: "get"
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
                        route: "/open-finance/oauth/token",
                        method: "post"
                    },
                    of_config_update: {
                        route: "/open-finance/config",
                        method: "put"
                    },
                    of_config_detail: {
                        route: "/open-finance/config",
                        method: "get"
                    },
                    of_list_participants: {
                        route: "/open-finance/participantes",
                        method: "get"
                    },
                    of_start_pix_payment: {
                        route: "/open-finance/pagamentos/pix",
                        method: "post"
                    },
                    of_list_pix_payment: {
                        route: "/open-finance/pagamentos/pix",
                        method: "get"
                    },
                    of_devolution_pix: {
                        route: "/open-finance/devolucao/pagamento/pix",
                        method: "post"
                    }
                }
            }
            PAYMENTS = { 
                URL: {
                    production: "https://pagarcontas.api.efipay.com.br",
                    sandbox: "https://pagarcontas.api.efipay.com.br"
                },
                ENDPOINTS: {
                    authorize: {
                        route: "/oauth/token",
                        method: "post"
                    },
                    pay_detail_barcode: {
                        route: "/pagamento/codBarras/:codBarras",
                        method: "get"
                    },
                    pay_request_barcode: {
                        route: "/pagamento/codBarras/:codBarras",
                        method: "post"
                    },
                    pay_detail_payment: {
                        route: "/pagamento/:idPagamento",
                        method: "get"
                    },
                    pay_list_payments: {
                        route: "/pagamento/resumo",
                        method: "get"
                    }
                }
            }
            ACCOUNTS_OPENING = {
                URL: {
                    production: "https://abrircontas.api.efipay.com.br",
                    sandbox: "https://abrircontas.api.efipay.com.br"
                },
                ENDPOINTS: {
                    authorize: {
                        route: "/oauth/token",
                        method: "post"
                    },
                    create_account: {
                        route: "/cadastro/conta-simplificada",
                        method: "post"
                    },
                    get_account_credentials: {
                        route: "/cadastro/conta-simplificada/:idContaSimplificada/credenciais",
                        method: "get"
                    },
                    get_account_certificate: {
                        route: "/cadastro/conta-simplificada/:idContaSimplificada/certificado",
                        method: "get"
                    },
                    account_config_webhook: {
                        route: "/cadastro/webhook",
                        method: "post"
                    },
                    account_list_webhook: {
                        route: "/cadastro/webhooks",
                        method: "get"
                    },
                    account_detail_webhook: {
                        route: "/cadastro/webhook/:identificadorWebhook",
                        method: "get"
                    },
                    account_delete_webhook: {
                        route: "/cadastro/webhook/:identificadorWebhook",
                        method: "delete"
                    }
                }
            }
        end
    end
end