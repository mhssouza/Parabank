*** Settings ***
Resource             ../Resources/ResourcesTransferencia/VariaveisTransferencia.robot
Resource             ../Resources/VariaveisComuns.robot
Test Setup           Dado que eu acesse o site Parabank
Test Teardown        Fechar o navegador

*** Test Cases ***
QBEF-01 Tranferência com sucesso
    [Tags]    Transferência
    Dado que o usuário fizer Login com Sucesso
    Quando o usuário for para a página de transferência
    E preencher os campos de transferência com os dados        ${CONTA_ORIGEM}    ${CONTA_DESTINO}    ${VALOR_TRANSFERENCIA}
    Então deve mostrar uma mensagem de sucesso
    E a tranferência deve ser registrada                       ${CONTA_ORIGEM}    ${CONTA_DESTINO}    ${VALOR_TRANSFERENCIA}

QBEF-02 Tranferência sem dado de valor
    [Tags]    Transferência
    Dado que o usuário fizer Login com Sucesso
    Quando o usuário for para a página de transferência
    E preencher os campos de transferência com os dados        ${CONTA_ORIGEM}    ${CONTA_DESTINO}    ${VALOR_TRANSFERENCIA_VAZIO}  
    Então deve mostrar uma mensagem de erro pra transferência

QBEF-03 Transferência com valor negativo
    [Tags]    Transferência
    Dado que o usuário fizer Login com Sucesso
    Quando o usuário for para a página de transferência
    E preencher os campos de transferência com os dados        ${CONTA_ORIGEM}    ${CONTA_DESTINO}    ${VALOR_TRANSFERENCIA_NEGATIVO}
    Então deve mostrar uma mensagem de erro pra transferência

QBEF-04 Transferência com conta valor em Texto
    [Tags]    Transferência
    Dado que o usuário fizer Login com Sucesso
    Quando o usuário for para a página de transferência
    E preencher os campos de transferência com os dados        ${CONTA_ORIGEM}    ${CONTA_DESTINO}    ${USUARIO_INVALIDO}
    Então deve mostrar uma mensagem de erro pra transferência