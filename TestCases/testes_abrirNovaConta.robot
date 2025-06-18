*** Settings ***
Resource             ../Resources/ResourcesAbrirNovaConta/VariaviesAbrirNovaConta.robot
Resource             ../Resources/VariaveisComuns.robot
Test Setup           Dado que eu acesse o site Parabank
Test Teardown        Fechar o navegador

*** Test Cases ***

QBEF-01 Abrir uma nova conta com Sucesso
    [Tags]    new-account
    Dado que o usuário fizer login com Sucesso
    Quando desejo abrir uma nova conta com as opções válidas
    Então o sistema deve exibir uma mensagem de sucesso com o número da nova conta