*** Settings ***
Resource    ../../Settings/main.robot
Resource    LocatorsTransfer.robot

*** Variables ***
${VALOR_TRANSFERENCIA}                                          900
${VALOR_TRANSFERENCIA_NEGATIVO}                                -900
${VALOR_TRANSFERENCIA_VAZIO}                                   ${EMPTY}
${CONTA_ORIGEM}                                                13344
${CONTA_DESTINO}                                               13344

*** Keywords ***
Quando o usuário for para a página de transferência
    Wait Until Element Is Visible    ${BTN_TRANSFERENCIA}       10s
    Click Element                    ${BTN_TRANSFERENCIA}
    Wait Until Element Is Visible    ${CAMPO_QUANTIDADE}        10s
    Take Screenshot

E preencher os campos de transferência com os dados
    [Arguments]                      ${conta_origem}            ${conta_destino}          ${quantidade}
    Click Element                    ${OPTION_CONTA_ORIGEM}
    Select From List By Value        ${OPTION_CONTA_ORIGEM}     ${conta_origem}
    Click Element                    ${OPTION_CONTA_DESTINO}
    Select From List By Value        ${OPTION_CONTA_DESTINO}    ${conta_destino}
    Input Text                       ${CAMPO_QUANTIDADE}        ${quantidade}
    Click Button                     ${BTN_TRANSFERIR}
    Take Screenshot                  dados_preenchidos_transferencia.png
    

Então deve mostrar uma mensagem de sucesso
    Wait Until Element Is Visible    ${MENSAGEM_SUCESSO}        10s
    Element Should Be Visible        ${MENSAGEM_SUCESSO}
    Take Screenshot

E a tranferência deve ser registrada
    [Arguments]                      ${conta_origem}            ${conta_destino}           ${quantidade}
    Click Element                    ${BTN_OVERVIEW}
    Wait Until Element Is Visible    ${PAINEL_DIREITA}          10s
    Wait Until Element Is Visible    ${TABELA_TRANSFERENCIA}    10s
    Sleep                            5s
    Element Should Contain           ${TABELA_TRANSFERENCIA}    ${conta_origem}            ${conta_destino}          ${quantidade}
    Take Screenshot

Então deve mostrar uma mensagem de erro pra transferência
    Wait Until Element Is Visible    ${MENSAGEM_ERRO2}           10s
    Element Should Be Enabled        ${MENSAGEM_ERRO2}
    Take Screenshot