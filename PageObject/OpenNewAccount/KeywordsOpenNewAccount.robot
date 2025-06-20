*** Settings ***
Resource    ../../Settings/main.robot
Resource    LocatorsOpenNewAccount.robot

*** Variables ***
${TIPO_CONTA}    CHECKING


*** Keywords ***
Quando desejo abrir uma nova conta com as opções válidas
    Wait Until Element Is Visible    ${LINK_NOVA_CONTA}
    Click Element    ${LINK_NOVA_CONTA}
    Select From List By Label    ${SELECT_TIPO_CONTA}    ${TIPO_CONTA}
    Sleep    1s
    Click Button    ${BOTAO_ABRIR_CONTA}

Então o sistema deve exibir uma mensagem de sucesso com o número da nova conta
    Wait Until Element Is Visible    ${MENSAGEM_SUCESSO_CONTA}    10s
    Element Should Be Visible        ${MENSAGEM_SUCESSO_CONTA}
    Wait Until Element Is Visible    ${NUMERO_NOVA_CONTA}
    Element Should Be Visible        ${NUMERO_NOVA_CONTA}