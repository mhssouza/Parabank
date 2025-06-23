*** Settings ***
Resource    ../../Settings/main.robot
Resource    LocatorsLogin.robot

*** Variables ***
${USUARIO_VALIDO}                    john
${SENHA_VALIDO}                      demo
${USUARIO_INVALIDO}                  teste
${SENHA_INVALIDO}                    teste

*** Keywords ***

Dado que o usuário esteja na tela de Login
    Wait Until Element Is Visible    ${CAMPO_USUARIO}          10s
    Element Should Be Visible        ${CAMPO_USUARIO}          
    Wait Until Element Is Visible    ${CAMPO_SENHA}            10s
    Element Should Be Visible        ${CAMPO_SENHA}

Quando o usuário preencher os campos de login
    [Arguments]                      ${usuario}                ${senha}
    Input Text                       ${CAMPO_USUARIO}          ${usuario}
    Input Text                       ${CAMPO_SENHA}            ${senha}
    Click Button                     ${BOTAO_LOGIN}
    Capturar Print Na Pasta Da Funcionalidade      QBEF-02     PageObject/Login/Screenshots

Então deve ser redirecionado para a página inicial
    Wait Until Element Is Visible    ${BTN_LOGOUT}             10s
    Element Should Be Visible        ${BTN_LOGOUT}

Então deve ver uma mensagem de erro de login
    Wait Until Element Is Visible    ${MENSAGEM_ERRO1}         10s
    Element Should Be Enabled        ${MENSAGEM_ERRO1}