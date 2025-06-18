*** Settings ***
Resource    ../../Settings/main.robot
Resource    LocatorsLogin.robot

*** Variables ***
${USUARIO_VALIDO}                    john
${SENHA_VALIDO}                      demo
${USUARIO_INVALIDO}                  Teste
${SENHA_INVALIDO}                    Teste

*** Keywords ***
Dado que o usuário preenche o campo de login com as credenciais
    [Arguments]                      ${usuario}                ${senha}
    Wait Until Element Is Visible    ${CAMPO_USUARIO}          10s    
    Input Text                       ${CAMPO_USUARIO}          ${usuario}
    Input Text                       ${CAMPO_SENHA}            ${senha}
    Click Button                     ${BOTAO_LOGIN}

Então deve ser redirecionado para a página inicial
    Wait Until Element Is Visible    ${BTN_LOGOUT}             10s
    Element Should Be Visible        ${BTN_LOGOUT}

Então deve mostrar uma mensagem de erro
    Wait Until Element Is Visible    ${MENSAGEM_ERRO1}         10s
    Element Should Be Enabled        ${MENSAGEM_ERRO1}