*** Settings ***
Resource             ../../Settings/main.robot
Resource             KeywordsLogin.robot   
Test Setup        Dado que eu acesse o site Parabank
Test Teardown     Fechar o navegador



*** Test Cases ***
QBEF-01 Login com sucesso
    [Tags]    Login    Positive
    Dado que o usuário preenche o campo de login com as credenciais    ${USUARIO_VALIDO}    ${SENHA_VALIDO}
    Então deve ser redirecionado para a página inicial

QBEF-02 Login com falha
    [Tags]    Login    Negative
    Dado que o usuário preenche o campo de login com as credenciais    ${USUARIO_INVALIDO}    ${SENHA_INVALIDO}
    Então deve mostrar uma mensagem de erro

QBEF-03 Login com campos vazios
    [Tags]    Login    Positive
    Dado que o usuário preenche o campo de login com as credenciais    ${USUARIO_INVALIDO}    ${EMPTY}
    Então deve mostrar uma mensagem de erro